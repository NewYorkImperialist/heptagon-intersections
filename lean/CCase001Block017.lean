import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 850-899 of the 2915-step refutation of ccase001: 137 core clauses and 45 earlier-derived ones give 17 more. -/
theorem CCase001_block017
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c81 : ¬v15 ∨ ¬v17)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
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
    (c130 : ¬v31 ∨ ¬v30)
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
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c168 : ¬v44 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c175 : ¬v46 ∨ ¬v44)
    (c176 : ¬v47 ∨ ¬v44)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c215 : ¬v31 ∨ v38 ∨ v30 ∨ v17 ∨ v16 ∨ v24 ∨ v32 ∨ v23 ∨ v18 ∨ v33 ∨ v34 ∨ v27 ∨ v39 ∨ v41)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c242 : ¬v20 ∨ v27 ∨ v13 ∨ v12 ∨ v28 ∨ v11 ∨ v34 ∨ v40 ∨ v19 ∨ v21 ∨ v25 ∨ v18 ∨ v41 ∨ v42)
    (c249 : v6 ∨ ¬v7 ∨ v49 ∨ v1 ∨ v48 ∨ v14 ∨ v13 ∨ v8)
    (c253 : v21 ∨ v6 ∨ v13 ∨ v47 ∨ v26 ∨ v27 ∨ v25 ∨ v18 ∨ v11 ∨ v19 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c299 : ¬v34 ∨ v41 ∨ v33 ∨ v38 ∨ v47 ∨ v42 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v24 ∨ v26 ∨ v48 ∨ v49)
    (c324 : v43 ∨ ¬v5 ∨ v39 ∨ v13 ∨ v6 ∨ v8 ∨ v1 ∨ v4 ∨ v40 ∨ v12 ∨ v41 ∨ v7 ∨ v46 ∨ v47)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c338 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v25 ∨ v32 ∨ v41)
    (c339 : ¬v27 ∨ v41 ∨ v19 ∨ v35 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v18 ∨ v32 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c347 : v15 ∨ v6 ∨ v13 ∨ v7 ∨ v8 ∨ v21 ∨ v1 ∨ ¬v14)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c378 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v9 ∨ v28 ∨ v23 ∨ v24 ∨ v8 ∨ v32 ∨ v25 ∨ v14 ∨ v18)
    (c383 : v11 ∨ v4 ∨ ¬v3 ∨ v2 ∨ v9 ∨ v45 ∨ v10 ∨ v46)
    (c385 : ¬v33 ∨ v40 ∨ v41 ∨ v39 ∨ v26 ∨ v27 ∨ v34 ∨ v32)
    (c396 : v22 ∨ ¬v20 ∨ v28 ∨ v27 ∨ v49 ∨ v13 ∨ v19 ∨ v21 ∨ v8 ∨ v12 ∨ v15 ∨ v47 ∨ v48 ∨ v6)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c419 : ¬v26 ∨ v21 ∨ v25 ∨ v33 ∨ v48 ∨ v27 ∨ v46 ∨ v32 ∨ v19 ∨ v40 ∨ v35 ∨ v20 ∨ v47 ∨ v28)
    (c425 : v36 ∨ v22 ∨ v40 ∨ v23 ∨ v35 ∨ ¬v29 ∨ v33 ∨ v21 ∨ v16 ∨ v34 ∨ v15 ∨ v30 ∨ v26 ∨ v42)
    (c430 : v43 ∨ ¬v21 ∨ v22 ∨ v14 ∨ v49 ∨ v28 ∨ v20 ∨ v15 ∨ v16 ∨ v13 ∨ v23 ∨ v9 ∨ v48 ∨ v7)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c493 : ¬v31 ∨ v38 ∨ v30 ∨ v25 ∨ v24 ∨ v39 ∨ v32 ∨ v23)
    (c497 : v43 ∨ v36 ∨ v45 ∨ v2 ∨ v37 ∨ v1 ∨ v38 ∨ ¬v44)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c541 : v43 ∨ ¬v36 ∨ v45 ∨ v42 ∨ v1 ∨ v31 ∨ v29 ∨ v37 ∨ v38 ∨ v49 ∨ v30 ∨ v9 ∨ v14 ∨ v8)
    (c558 : ¬v20 ∨ v27 ∨ v12 ∨ v26 ∨ v28 ∨ v21 ∨ v13 ∨ v19)
    (c591 : v22 ∨ ¬v21 ∨ v28 ∨ v13 ∨ v14 ∨ v27 ∨ v20 ∨ v15)
    (c596 : ¬v20 ∨ v27 ∨ v13 ∨ v12 ∨ v21 ∨ v14 ∨ v26 ∨ v19)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c839 : v13 ∨ ¬v2 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1143 : ¬v34 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1235 : ¬v4 ∨ v2 ∨ ¬v5 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1259 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1306 : v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1367 : ¬v7 ∨ ¬v6 ∨ v37 ∨ ¬v44 ∨ v45)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1376 : v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1389 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v22 ∨ v30 ∨ v37 ∨ v43 ∨ v45 ∨ v49)
    (c1408 : v7 ∨ v1 ∨ ¬v11 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1411 : ¬v19 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1459 : ¬v1 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1461 : v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1463 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1467 : v37 ∨ ¬v13 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20) ∧ (¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v5 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48) ∧ (v3 ∨ v1 ∨ v8 ∨ v10 ∨ v30 ∨ ¬v35 ∨ v37 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v45 ∨ v49) ∧ (v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28) ∧ (v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43) ∧ (v31 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46) ∧ (¬v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41) ∧ (v28 ∨ ¬v8 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27) ∧ (v13 ∨ v1 ∨ v6 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39) := by
  have c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c950 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
  have c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1470 : v45 ∨ ¬v13 ∨ v26 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v33 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u18 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n0
    have u19 : ¬v36 := by
      rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
    have u20 : v2 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd u2 a
    have u21 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u20 a
      · exact absurd u18 a
      · exact a
    have u22 : v20 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
    rcases c1463 with a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u3
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n7
  have c1471 : ¬v7 ∨ v1 ∨ v8 ∨ v14 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c1367 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n5 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
  have c1472 : v12 ∨ ¬v2 ∨ ¬v3 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v30 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n11
    have u11 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u8
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u11
  have c1473 : v34 ∨ v26 ∨ v32 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c385 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    rcases c338 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
  have c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1473 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1475 : v6 ∨ v1 ∨ ¬v3 ∨ v7 ∨ v8 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ ¬v38 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u1
    have u6 : v4 := by
      rcases c324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
    rcases c26 with a|a|a
    · exact absurd n2 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1476 : v6 ∨ ¬v3 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v2 := by
      rcases c1472 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v7 := by
      rcases c249 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v38 := by
      rcases c1475 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v36 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd u3 a
    have u10 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u12
    have u15 : v4 := by
      rcases c324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    rcases c1235 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u5
    · exact absurd u14 a
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd u3 a
    · exact absurd a n8
  have c1477 : ¬v5 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v4 := by
      rcases c839 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c20 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
  have c1478 : v12 ∨ v6 ∨ v8 ∨ v14 ∨ v26 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1476 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v2 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n7
    have u9 : ¬v5 := by
      rcases c1477 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n10
    have u20 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u14
    have u21 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n7
    have u22 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u5 a
    have u26 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u20
    have u27 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
    rcases c1389 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n11
  have c1479 : v1 ∨ ¬v6 ∨ v7 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v5 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
    have u3 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n7 a
      · exact a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd n7 a
    · exact absurd a n8
  have c1480 : v3 ∨ v1 ∨ v8 ∨ v10 ∨ v30 ∨ ¬v35 ∨ v37 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n8
  have c1481 : ¬v29 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u1
  have c1482 : ¬v27 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u6 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    rcases c1389 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
  have c1484 : ¬v15 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
  have c1485 : v8 ∨ v14 ∨ v26 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v7 := by
      rcases c1471 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v6 := by
      rcases c1479 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v29 := by
      rcases c1481 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v12 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u12 a
    have u14 : ¬v27 := by
      rcases c1482 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n9
    have u15 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
    have u21 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v41 := by
      rcases c299 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v15 := by
      rcases c1484 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n9
    have u26 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u10
      · exact a
      · exact absurd a n0
    have u27 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u26 a
    have u31 : v21 := by
      rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u26 a
      · exact absurd a n3
      · exact a
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a n1
      · exact absurd a u30
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u27
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u25
  have c1486 : v37 ∨ v8 ∨ v26 ∨ v30 ∨ ¬v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v14 := by
      rcases c1485 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    have u14 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u12
    have u17 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n5
    have u19 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u18 a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a u19
    · exact absurd a n7
    · exact absurd u16 a
  have c1487 : v49 ∨ v6 ∨ v8 ∨ v26 ∨ v27 ∨ v30 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c1486 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : v14 := by
      rcases c1485 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u5 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u6 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u7 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u8 : v20 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v28 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    rcases c1451 with a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n0
  have c1488 : v6 ∨ v8 ∨ v26 ∨ v30 ∨ ¬v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v14 := by
      rcases c1485 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    have u12 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v5 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n8
    have u15 : v3 := by
      rcases c1480 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v4 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd u14 a
    rcases c26 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c1489 : v20 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v33 := by
      rcases c1465 with a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v21 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u2 a
    rcases c339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1490 : v37 ∨ v6 ∨ v8 ∨ v26 ∨ v30 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v35 := by
      rcases c1488 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v34 := by
      rcases c1486 with a|a|a|a|a|a|a|a|a|a
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
    have u9 : v14 := by
      rcases c1485 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u11 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u13 : v27 := by
      rcases c1487 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u17 : v20 := by
      rcases c1489 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v7 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd u9 a
    have u21 : v29 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u23
    have u25 : v4 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd u24 a
    rcases c33 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u20 a
  have c1491 : v37 ∨ v8 ∨ v26 ∨ v30 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v6 := by
      rcases c1490 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v7 := by
      rcases c1367 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n4
    have u9 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n4
    have u10 : v14 := by
      rcases c1479 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
    have u12 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u3 a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u8
  have c1492 : v33 ∨ ¬v6 ∨ v26 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v3 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n4
    have u10 : ¬v7 := by
      rcases c1367 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
    have u11 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u12 : v14 := by
      rcases c1479 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
    rcases c71 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u4 a
  have c1493 : v1 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : v4 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd u1 a
    have u4 : ¬v2 := by
      rcases c1477 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd n8 a
    · exact absurd a n9
  have c1494 : v26 ∨ v8 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v30 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v6 := by
      rcases c1492 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v12 := by
      rcases c1493 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v7 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a u13
    have u15 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1465 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
  have c1495 : v49 ∨ v6 ∨ v26 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v8 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a u7
    have u12 : v33 := by
      rcases c1493 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u18 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u19 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n7
    have u20 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u17
    have u24 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u23 a
    rcases c430 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u11
  have c1496 : v26 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v13 := by
      rcases c1470 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v8 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u2 a
    have u7 : v6 := by
      rcases c1495 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v7 := by
      rcases c1367 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
    rcases c1479 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd u2 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1497 : v13 ∨ v1 ∨ ¬v6 ∨ ¬v11 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v7 := by
      rcases c1367 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u3 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v26 := by
      rcases c1496 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v14 := by
      rcases c1479 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u10 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u11 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u13 : v5 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
    have u14 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u17 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd n3 a
      · exact absurd a u9
    have u18 : ¬v15 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u10
    have u19 : v20 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a n1
    have u20 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u19 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a u15
    · exact absurd a u20
  have c1498 : ¬v6 ∨ v1 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v7 := by
      rcases c1367 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
    have u3 : v13 := by
      rcases c1497 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u3 a
    have u6 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
    have u7 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u3 a
    have u8 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u11 : ¬v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
    have u12 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v42 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
      · exact a
      · exact absurd a n12
    rcases c1422 with a|a|a|a|a
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n12
  have c1499 : ¬v13 ∨ v1 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v37 ∨ ¬v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u5 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u6 : ¬v47 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n9 a
    have u8 : ¬v45 := by
      rcases c174 with a|a
      · exact absurd n9 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n9 a
      · exact a
    have u10 : v26 := by
      rcases c1496 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v7 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
    have u12 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u12
    have u15 : v21 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n2
    have u16 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n7
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u13
  have c1500 : v32 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n4 a
    rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u4
  have c1501 : v21 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v20 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
    have u4 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1500 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd n6 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1502 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c591 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
  have c1503 : v14 ∨ v1 ∨ v6 ∨ ¬v11 ∨ v13 ∨ v19 ∨ ¬v26 ∨ v37 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n0
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v21 := by
      rcases c1502 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u7 : v12 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n3 a
    have u9 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u7 a
    have u10 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n3 a
    have u11 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v15 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u10
    have u14 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u16
  have c1504 : ¬v21 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v22 ∨ v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n3
    have u14 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u15 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u11
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u13 a
      · exact a
    rcases c299 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a n8
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n9
    · exact absurd a n10
  have c1505 : v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v26 := by
      rcases c1496 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v19 := by
      rcases c1411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v1 := by
      rcases c1459 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c1498 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v13 := by
      rcases c1499 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v14 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u9 a
    have u16 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u9 a
    have u17 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v21 := by
      rcases c1504 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v15 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u16
    have u21 : ¬v20 := by
      rcases c396 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
    have u22 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u22 a
      · exact a
    rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
  have c1506 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
    have u2 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u6
    have u8 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a n11
  have c1507 : v31 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c28 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n1 a
  have c1508 : v30 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n7 a
      · exact a
    rcases c215 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n12
  have c1509 : ¬v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1508 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1510 : v8 ∨ v1 ∨ v6 ∨ v13 ∨ ¬v20 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v22 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u2
    have u15 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v12 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
    have u17 : ¬v31 := by
      rcases c1509 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u18 : v7 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u14 a
    have u19 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u16 a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u16 a
      · exact absurd u14 a
      · exact a
    rcases c1507 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n14
  have c1511 : v28 ∨ ¬v8 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
    have u4 : v12 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
    rcases c52 with a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1512 : ¬v14 ∨ ¬v8 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v4 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n11
    rcases c26 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1513 : v1 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v20 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : v8 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v28 := by
      rcases c1511 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v35 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v31 := by
      rcases c1509 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
    have u26 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v14 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a u27
    have u29 : v12 := by
      rcases c596 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a u16
    have u30 : v11 := by
      rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd u12 a
      · exact absurd a n8
      · exact absurd a n9
    have u31 : v9 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u28
      · exact absurd a u27
      · exact a
      · exact absurd u19 a
    rcases c58 with a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd u29 a
  have c1514 : v35 ∨ v1 ∨ v6 ∨ v13 ∨ v14 ∨ v21 ∨ v28 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n4
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1515 : v13 ∨ v1 ∨ v6 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c1513 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v20 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v8 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v14 := by
      rcases c1514 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u19 a
      · exact absurd u20 a
      · exact a
    rcases c242 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u7
  have c1516 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    rcases c493 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
  have c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1516 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  exact ⟨c1468, c1469, c1474, c1477, c1480, c1481, c1482, c1483, c1500, c1502, c1505, c1506, c1507, c1509, c1511, c1515, c1517⟩
