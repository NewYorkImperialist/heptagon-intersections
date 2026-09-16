import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 950-999 of the 2934-step refutation of ccase002: 99 core clauses and 65 earlier-derived ones give 15 more. -/
theorem CCase002_block019
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c113 : ¬v27 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c118 : ¬v26 ∨ ¬v27)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c148 : ¬v42 ∨ ¬v36)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c171 : ¬v44 ∨ ¬v46)
    (c172 : ¬v44 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c270 : v13 ∨ v12 ∨ v48 ∨ v49 ∨ v14 ∨ v7 ∨ v5 ∨ ¬v6)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c300 : v22 ∨ v16 ∨ v21 ∨ v28 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v8)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c409 : v34 ∨ ¬v27 ∨ v28 ∨ v19 ∨ v14 ∨ v20 ∨ v26 ∨ v23 ∨ v12 ∨ v13 ∨ v16 ∨ v30 ∨ v22 ∨ v35)
    (c423 : v20 ∨ v6 ∨ v17 ∨ v19 ∨ ¬v13 ∨ v3 ∨ v12 ∨ v11 ∨ v10 ∨ v14 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c426 : v29 ∨ v22 ∨ v24 ∨ v30 ∨ v15 ∨ v31 ∨ ¬v23 ∨ v16)
    (c445 : ¬v44 ∨ v43 ∨ v36 ∨ v37 ∨ v38 ∨ v1 ∨ v2 ∨ v45)
    (c474 : ¬v44 ∨ v36 ∨ v2 ∨ v38 ∨ v43 ∨ v37 ∨ v3 ∨ v45)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c530 : v14 ∨ v19 ∨ v5 ∨ v12 ∨ v7 ∨ v6 ∨ v20 ∨ ¬v13)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c800 : ¬v21 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28)
    (c827 : ¬v2 ∨ ¬v10 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c878 : v19 ∨ ¬v17 ∨ ¬v18 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1084 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1105 : ¬v18 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c1164 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1179 : v19 ∨ v3 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1250 : ¬v11 ∨ ¬v3 ∨ v4 ∨ v17 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c1285 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1319 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1333 : ¬v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1388 : ¬v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28)
    (c1397 : ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1405 : ¬v1 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v19 ∨ v26 ∨ v33 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1412 : v37 ∨ v1 ∨ v2 ∨ v3 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1429 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1431 : ¬v37 ∨ ¬v27 ∨ ¬v33)
    (c1432 : ¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v49)
    (c1439 : v18 ∨ ¬v3 ∨ v11 ∨ v16 ∨ v19 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1460 : v18 ∨ v4 ∨ v17 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1467 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v43 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1471 : v45 ∨ v19 ∨ ¬v20 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1472 : ¬v21 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28)
    (c1473 : ¬v33 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1475 : v20 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v34 ∨ ¬v38 ∨ v42 ∨ v45 ∨ v46 ∨ v48)
    (c1477 : v34 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v28)
    (c1478 : ¬v34 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1489 : ¬v18 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1496 : v10 ∨ v3 ∨ v19 ∨ v23 ∨ v24 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1501 : v49 ∨ v3 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    : (¬v33 ∨ v15 ∨ v16 ∨ ¬v23 ∨ v24) ∧ (¬v18 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28) ∧ (v7 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24) ∧ (v19 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24) ∧ (¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20) ∧ (v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (v33 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48) ∧ (v27 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ ¬v3 ∨ v16 ∨ v18 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ v19 ∨ v26 ∨ ¬v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v17 ∨ v16 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28) := by
  have c1502 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a n2
  have c1503 : v42 ∨ v3 ∨ v10 ∨ ¬v17 ∨ v19 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v23 := by
      rcases c1496 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v18 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u8 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u10 : ¬v33 := by
      rcases c1502 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
    rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd u6 a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1504 : ¬v18 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v21 := by
      rcases c1472 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v15 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u3 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a u5
  have c1505 : v33 ∨ v3 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v4 := by
      rcases c330 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a u1
    have u4 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c579 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1506 : v7 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u4 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n12
    have u5 : v14 := by
      rcases c423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c56 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
  have c1508 : v19 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v4 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v11 := by
      rcases c1505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v5 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n2
    have u9 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u8 a
      · exact absurd u6 a
      · exact a
    have u11 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
    have u12 : v12 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c54 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c1509 : ¬v34 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
  have c1510 : v24 ∨ v3 ∨ v10 ∨ v19 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v23 := by
      rcases c1496 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v34 := by
      rcases c1509 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n0
    have u10 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n0
    have u11 : ¬v18 := by
      rcases c1504 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
    have u12 : v33 := by
      rcases c1508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u3 a
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u1
  have c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd n0 a
  have c1512 : v19 ∨ ¬v3 ∨ v17 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v18 := by
      rcases c1504 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v23 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n4
    have u7 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v4 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u10 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u12 : v13 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1511 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u1
  have c1513 : ¬v4 ∨ ¬v3 ∨ v22 ∨ v24 ∨ ¬v27 ∨ ¬v33 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v37 := by
      rcases c1431 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u6 : ¬v47 := by
      rcases c172 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v46 := by
      rcases c171 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
    rcases c1432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a n9
  have c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
    rcases c1188 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1515 : v26 ∨ ¬v3 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v22 ∨ v24 ∨ ¬v27 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v33 := by
      rcases c1513 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n14
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u5
    have u7 : v11 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c51 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1516 : v17 ∨ ¬v3 ∨ v18 ∨ v19 ∨ v22 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v21 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
    have u6 : ¬v4 := by
      rcases c1515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v11 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v33 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c582 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n11
  have c1517 : v28 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v22 ∨ v24 ∨ v26 ∨ v34 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v27 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v21 := by
      rcases c1477 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
    have u6 : ¬v38 := by
      rcases c1475 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u7 : v18 := by
      rcases c1516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
    have u9 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
    have u10 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
    have u11 : v8 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n0
    rcases c38 with a|a
    · exact absurd u11 a
    · exact absurd u9 a
  have c1518 : v47 ∨ ¬v3 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd u4 a
  have c1519 : ¬v3 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v4 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c579 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1520 : v45 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v28 ∨ v34 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v22 := by
      rcases c1517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v21 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v11 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v33 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u17 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v4 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n9
    have u19 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n12
    have u20 : v40 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n7
    have u21 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
    have u22 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
    have u23 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u20 a
      · exact a
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n0
  have c1521 : v34 ∨ ¬v3 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a u2
      · exact a
    have u4 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v4 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u8 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u10 : v13 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v12 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c54 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1522 : v47 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v24 ∨ v28 ∨ v34 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v26 := by
      rcases c1520 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v18 := by
      rcases c1521 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    have u11 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    have u12 : ¬v21 := by
      rcases c1472 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n5
    have u13 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n11
    rcases c29 with a|a|a
    · exact absurd n1 a
    · exact absurd u14 a
    · exact absurd u13 a
  have c1523 : v33 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v18 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v21 := by
      rcases c1472 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1524 : v17 ∨ ¬v3 ∨ v19 ∨ v24 ∨ v27 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v34 := by
      rcases c1522 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v23 := by
      rcases c1509 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n3
    have u11 : ¬v26 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n4
    have u13 : v12 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v15 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
    have u15 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u14 a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u11
    rcases c1439 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd n1 a
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1525 : v24 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v34 := by
      rcases c1522 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v27 := by
      rcases c1524 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v12 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v18 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd u9 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u6
  have c1526 : v19 ∨ v10 ∨ ¬v17 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
    have u6 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u5 a
    have u7 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1477 with a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd n4 a
    · exact absurd a n5
  have c1527 : v27 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u6 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v35 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v22 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
    rcases c844 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u8
  have c1528 : v27 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v26 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v33 := by
      rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v23 := by
      rcases c1502 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n4
    have u9 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
  have c1529 : v34 ∨ ¬v3 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u5 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u8 : v13 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n5
    rcases c40 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1530 : v48 ∨ ¬v3 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v27 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c1525 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u4 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u6 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v26 := by
      rcases c1528 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c1529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u12 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u13 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a u5
    have u14 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n7
    have u15 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u18 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
    have u19 : ¬v5 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u20 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u21 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u16
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
    have u22 : v13 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    rcases c40 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1531 : v33 ∨ ¬v3 ∨ v16 ∨ v18 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v12 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1439 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1532 : v28 ∨ v10 ∨ v19 ∨ v24 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v3 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v17 := by
      rcases c1525 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v27 := by
      rcases c1526 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v18 := by
      rcases c1530 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u8 : v23 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
    have u9 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v33 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v15 := by
      rcases c1502 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd a n3
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n0
    have u18 : v40 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
    have u19 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v13 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u21 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u22
  have c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    rcases c579 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1534 : ¬v27 ∨ v12 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ v20 ∨ v28 ∨ v30 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n10
  have c1535 : ¬v18 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v10 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c1489 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v17 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
    have u8 : v33 := by
      rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u10 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a u3
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
  have c1536 : v42 ∨ v19 ∨ v24 ∨ v28 ∨ ¬v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v10 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n9
    have u19 : ¬v27 := by
      rcases c1534 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
    have u20 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u20 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u21
      · exact a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
    have u23 : v26 := by
      rcases c1535 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd u22 a
      · exact absurd a u25
      · exact absurd a n3
    have u27 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n9
    have u28 : ¬v15 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u15
    have u29 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u20 a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u25
  have c1537 : ¬v18 ∨ v19 ∨ v24 ∨ v27 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v33 := by
      rcases c1536 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v26 := by
      rcases c1535 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a n4
    have u15 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n10
    have u16 : ¬v15 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u7
    have u17 : v17 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u5
    have u18 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a u18
    have u21 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n5
    have u23 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u21 a
    have u26 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n10
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u13
  have c1538 : v28 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v10 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v27 := by
      rcases c1537 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v17 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
    have u12 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
    have u13 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1477 with a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd u8 a
    · exact absurd a n0
  have c1539 : v28 ∨ ¬v10 ∨ v18 ∨ v19 ∨ ¬v27 ∨ v33 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u11
    have u16 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : v37 := by
      rcases c1412 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd u12 a
      · exact absurd a n7
    have u21 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a n7
    have u22 : v17 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u18
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u14
    have u23 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n6
    have u25 : ¬v35 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n6
    have u26 : ¬v21 := by
      rcases c800 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd u22 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n6
  have c1540 : v19 ∨ v24 ∨ v28 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c1538 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v10 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v33 := by
      rcases c1536 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v27 := by
      rcases c1539 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v26 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a u14
    have u18 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u15
    have u22 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v37 := by
      rcases c1412 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n4
    have u24 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n4
    have u25 : v17 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u22
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u18
    have u26 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u26
    have u29 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u30 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n3
    have u31 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u25 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u31
    · exact absurd a u10
  have c1541 : v48 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v42 := by
      rcases c1540 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n10
    have u12 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
    have u14 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
    have u15 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u16 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
    have u17 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n7
    have u18 : v17 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v35 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n10
    have u20 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v10 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v23 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
    have u24 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v15 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd u23 a
      · exact absurd a u3
    have u26 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u18 a
    have u27 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a n6
    have u28 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u27
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u28
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u7
  have c1542 : v49 ∨ v18 ∨ v19 ∨ v24 ∨ v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v42 := by
      rcases c1540 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v26 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a n4
      · exact a
    have u9 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1211 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n0
  have c1543 : v19 ∨ v18 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v27 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a
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
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v42 := by
      rcases c1540 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u17 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
    have u18 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n4
    have u20 : v17 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd u20 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u3
    have u22 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u11
  have c1544 : ¬v27 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c1477 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n4
  have c1545 : v19 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v18 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v42 := by
      rcases c1538 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v17 := by
      rcases c1544 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
    have u11 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v3 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    rcases c1514 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1546 : v24 ∨ v19 ∨ v26 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v42 := by
      rcases c1538 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v27 := by
      rcases c1545 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v21 := by
      rcases c1489 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
    have u17 : v35 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v17 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u1 a
    have u22 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
    have u23 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u12
      · exact a
      · exact absurd a u4
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u14
  have c1547 : ¬v26 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v28 ∨ ¬v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v34 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v35 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    rcases c1100 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u5
  have c1548 : v19 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v26 := by
      rcases c1546 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v18 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v42 := by
      rcases c1538 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
    have u12 : ¬v21 := by
      rcases c1472 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
    have u13 : v15 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
    have u14 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n2
    have u15 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u15 a
      · exact a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u17
  have c1549 : v12 ∨ v19 ∨ v26 ∨ ¬v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u3
    have u10 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n5
  have c1550 : ¬v21 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n10
    have u3 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
  have c1551 : v17 ∨ v16 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c1388 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v21 := by
      rcases c1550 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v15 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
    have u4 : ¬v14 := by
      rcases c1333 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u5 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u5 a
      · exact a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u7
  exact ⟨c1502, c1504, c1506, c1507, c1508, c1509, c1511, c1514, c1523, c1527, c1531, c1533, c1548, c1549, c1551⟩
