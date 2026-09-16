import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1050-1099 of the 2934-step refutation of ccase002: 103 core clauses and 77 earlier-derived ones give 9 more. -/
theorem CCase002_block021
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c102 : ¬v22 ∨ ¬v25)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c197 : v43 ∨ v49 ∨ v48 ∨ v6 ∨ v13 ∨ ¬v7 ∨ v1 ∨ v14)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c248 : v6 ∨ ¬v7 ∨ v49 ∨ v48 ∨ v43 ∨ v8 ∨ v1 ∨ v14)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c290 : v29 ∨ v16 ∨ v35 ∨ v23 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v28)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c298 : ¬v28 ∨ v35 ∨ v14 ∨ v34 ∨ v18 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v25 ∨ v27 ∨ v32 ∨ v21 ∨ v15)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c349 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v9 ∨ v21 ∨ v14 ∨ v8)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c372 : v21 ∨ v14 ∨ v1 ∨ v7 ∨ v16 ∨ v9 ∨ v15 ∨ ¬v8)
    (c384 : v36 ∨ v22 ∨ v37 ∨ v23 ∨ v42 ∨ v35 ∨ v30 ∨ ¬v29)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c467 : v29 ∨ v43 ∨ v44 ∨ v35 ∨ v37 ∨ v42 ∨ v49 ∨ ¬v36)
    (c479 : v12 ∨ ¬v4 ∨ v3 ∨ v5 ∨ v46 ∨ v47 ∨ v10 ∨ v11)
    (c488 : ¬v28 ∨ v42 ∨ v48 ∨ v43 ∨ v16 ∨ v22 ∨ v34 ∨ v35 ∨ v15 ∨ v27 ∨ v21 ∨ v23 ∨ v30 ∨ v49)
    (c519 : v43 ∨ ¬v1 ∨ v49 ∨ v8 ∨ v14 ∨ v2 ∨ v7 ∨ v9)
    (c525 : v36 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v22 ∨ v17 ∨ v27 ∨ v31 ∨ v24 ∨ v15 ∨ v23 ∨ v34 ∨ v41 ∨ v21)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c723 : v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c759 : v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c843 : v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30)
    (c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c928 : v7 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c991 : v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1216 : v4 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1241 : v10 ∨ v11 ∨ v13 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v33 ∨ ¬v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1254 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v45 ∨ v46)
    (c1285 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1310 : ¬v28 ∨ v15 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1319 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1364 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v34 ∨ v43 ∨ v48 ∨ v49)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1377 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1397 : ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1429 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1467 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v43 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1509 : ¬v34 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1580 : v34 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1583 : ¬v17 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v25 ∨ v26)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1588 : v11 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1593 : v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1595 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v33 ∨ v40 ∨ v43 ∨ v47 ∨ v49)
    (c1596 : v21 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v28 ∨ v29 ∨ ¬v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1601 : v13 ∨ v8 ∨ v9 ∨ v12 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28) ∧ (v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32) ∧ (v15 ∨ ¬v1 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v21 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v43 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49) ∧ (¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49) ∧ (v49 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v46 ∨ v1 ∨ v15 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v40 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v14 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49) := by
  have c1602 : v28 ∨ v8 ∨ v9 ∨ ¬v12 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v20 := by
      rcases c1593 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v17 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v1 := by
      rcases c1588 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u7 a
    have u13 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u7 a
    have u14 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u14
    have u16 : v29 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n12
      · exact absurd a n14
    have u17 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n10
    have u18 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u21 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n14
      · exact a
    have u22 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1211 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a n13
    · exact absurd a n14
  have c1603 : v28 ∨ v8 ∨ v9 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v12 := by
      rcases c1602 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v20 := by
      rcases c1593 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
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
      · exact absurd a n13
    have u10 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u11 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u12 : v13 := by
      rcases c1601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
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
      · exact absurd a n13
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v1 := by
      rcases c1588 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
    have u18 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
    have u19 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v29 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n13
    have u21 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n13
      · exact a
    have u24 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u22
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1211 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n13
  have c1604 : v15 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v33 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
    have u5 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n1
    have u6 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    have u7 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n12
      · exact absurd a u1
      · exact a
      · exact absurd a n13
    have u11 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n7
    rcases c145 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c1605 : v14 ∨ ¬v1 ∨ ¬v3 ∨ v11 ∨ v18 ∨ v21 ∨ v28 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n13
      · exact a
    rcases c1211 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n13
  have c1606 : v28 ∨ v8 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v9 := by
      rcases c1603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c46 with a|a
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
    have u12 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
    have u14 : v20 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
    have u15 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u5 a
    have u16 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u5 a
    have u17 : ¬v41 := by
      rcases c1596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v1 := by
      rcases c1604 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v3 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u18 a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u20 : v2 := by
      rcases c1004 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
    have u21 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u23 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u18 a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n13
    have u25 : ¬v35 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u22
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u22
  have c1607 : v28 ∨ v8 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
    have u7 : v9 := by
      rcases c1603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
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
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v20 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
    have u14 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u3 a
    have u15 : v29 := by
      rcases c1606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v38 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u19
    have u25 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a u20
    have u26 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    have u27 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a u26
  have c1608 : v48 ∨ v18 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u6 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
    have u11 : v8 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u12 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v20 := by
      rcases c654 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
    have u18 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u7 a
    have u19 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u7 a
    have u20 : ¬v1 := by
      rcases c1588 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd u11 a
    have u22 : v2 := by
      rcases c436 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u19
    have u23 : v6 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u12
    rcases c23 with a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd u23 a
  have c1609 : v8 ∨ v1 ∨ v14 ∨ v15 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v39 ∨ v41 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v23 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n8
    have u4 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
    have u5 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd u2 a
    have u6 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u10 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n7
    have u11 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v44 := by
      rcases c467 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n16
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n20
      · exact absurd u10 a
    have u14 : v20 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u15 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n6 a
    have u16 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n20
      · exact absurd a u9
    have u17 : v6 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n20
      · exact absurd a n19
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u19 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
    rcases c1319 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd u13 a
    · exact absurd a n17
  have c1610 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c593 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n7
  have c1611 : v1 ∨ v8 ∨ v18 ∨ v22 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v15 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
    have u7 : v23 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
    have u8 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u7 a
    have u11 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u7 a
    have u12 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n4
    have u13 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n3
    have u18 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v20 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u20 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u3 a
    have u21 : v14 := by
      rcases c1609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u12
    have u27 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u14
    have u28 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u29 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    rcases c759 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd u21 a
    · exact absurd a u6
    · exact absurd a u20
  have c1612 : ¬v8 ∨ v1 ∨ v18 ∨ v26 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
    have u11 : v20 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u4
    have u12 : ¬v15 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u7 a
    have u16 : v7 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
    rcases c197 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd u16 a
    · exact absurd a n1
    · exact absurd a u1
  have c1613 : v49 ∨ v1 ∨ v18 ∨ v22 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u5 : v23 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
    have u6 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u7 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n4
    have u8 : ¬v8 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    rcases c1611 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u8
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
    · exact absurd a n0
  have c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n4 a
      · exact a
    rcases c984 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c1615 : v29 ∨ v8 ∨ v15 ∨ v16 ∨ v18 ∨ ¬v19 ∨ ¬v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v21 := by
      rcases c290 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd n6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n10
    have u3 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n5 a
    have u4 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u6
  have c1616 : v18 ∨ v8 ∨ v15 ∨ ¬v22 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u7 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a n6
      · exact a
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v35 := by
      rcases c1615 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v21 := by
      rcases c843 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a u10
    have u14 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u4 a
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
  have c1617 : v21 ∨ v1 ∨ ¬v14 ∨ v15 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n9
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n8
    have u7 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u8 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    rcases c759 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n0
  have c1618 : v1 ∨ v15 ∨ v18 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
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
    have u5 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
    have u8 : v22 := by
      rcases c1613 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
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
    have u9 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a n5
      · exact a
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v8 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v29 := by
      rcases c1616 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v20 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u20 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u5 a
    have u22 : ¬v14 := by
      rcases c1617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u20
    have u24 : v6 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u22
    have u25 : ¬v11 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n11
    have u26 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u23 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u9
  have c1620 : v49 ∨ v1 ∨ v18 ∨ v24 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : v15 := by
      rcases c1618 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u7 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u8 : ¬v8 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u9 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u7 a
    have u11 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u2
    have u12 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n4
    have u14 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v35 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u18 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
    have u19 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u18 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u20 : ¬v7 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u14
    have u21 : v34 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u22 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n0
      · exact a
    have u23 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact a
    rcases c163 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c1621 : v33 ∨ v1 ∨ v18 ∨ v24 ∨ v26 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
    have u7 : v15 := by
      rcases c1618 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    have u10 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u1
    have u11 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n4
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v35 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v32 := by
      rcases c1620 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v39 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a u2
    have u21 : ¬v38 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v6 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a n9
    have u24 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u17
    have u26 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u23 a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a u24
  have c1622 : v46 ∨ v18 ∨ v24 ∨ v26 ∨ v28 ∨ ¬v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v1 := by
      rcases c1621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v19 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u6
    have u11 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
    have u12 : ¬v23 := by
      rcases c1507 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a n2
    have u13 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u1
    have u15 : v15 := by
      rcases c1614 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd n5 a
    have u16 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u7 a
    have u18 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
    have u19 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n3
    have u20 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
    rcases c1373 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u4 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a n9
    · exact absurd a n0
  have c1623 : v7 ∨ ¬v1 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v6 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n13
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u2 a
      · exact a
    rcases c928 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1624 : v15 ∨ ¬v1 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v21 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
    have u9 : v5 := by
      rcases c479 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u2
    rcases c10 with a|a|a
    · exact absurd n1 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1625 : v14 ∨ ¬v1 ∨ ¬v4 ∨ v5 ∨ v7 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u3 a
    rcases c519 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n1 a
    · exact absurd a n12
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u4
  have c1626 : v38 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ v25 ∨ v32 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd n7 a
    have u3 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n14
    have u4 : ¬v4 := by
      rcases c1625 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v12 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    rcases c51 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1627 : ¬v5 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : v12 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n3
      · exact a
    have u6 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u5 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1628 : v38 ∨ v18 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v19 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v1 := by
      rcases c1621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v32 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u13 : ¬v5 := by
      rcases c1627 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v20 := by
      rcases c1623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v14 := by
      rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u16 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u1 a
    have u17 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u1 a
    rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u2 a
    · exact absurd u15 a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1629 : v28 ∨ ¬v1 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact a
    have u6 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n13
    have u9 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v23 := by
      rcases c1509 with a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n5
    have u11 : v22 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v15 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u13 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n4 a
    have u14 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a u9
    rcases c55 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1630 : v49 ∨ v18 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v1 := by
      rcases c1621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
    have u9 : ¬v27 := by
      rcases c1608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v34 := by
      rcases c1629 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u11 : v38 := by
      rcases c1628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u12 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u3
    have u16 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n0
    have u17 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n7
    have u18 : v20 := by
      rcases c1623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u19 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u6 a
    have u20 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u6 a
    have u21 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u12
    rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u1 a
    · exact absurd u21 a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1631 : v35 ∨ v15 ∨ v16 ∨ v21 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v29 := by
      rcases c1310 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : v37 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u1 a
    have u11 : v20 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u11 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u4
    have u14 : v17 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n3
    have u15 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u6
    have u16 : v10 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u6
    have u18 : v13 := by
      rcases c298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n1
    rcases c49 with a|a
    · exact absurd u16 a
    · exact absurd u18 a
  have c1632 : v32 ∨ v15 ∨ v16 ∨ v21 ∨ v26 ∨ ¬v28 ∨ v33 ∨ v34 ∨ ¬v38 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : v35 := by
      rcases c1631 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1254 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd n8 a
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
  have c1633 : v14 ∨ ¬v1 ∨ v7 ∨ v15 ∨ v18 ∨ v24 ∨ v26 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v19 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v28 := by
      rcases c1630 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
    have u9 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v20 := by
      rcases c1623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
    have u13 : ¬v38 := by
      rcases c1632 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v5 := by
      rcases c1627 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd u11 a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
  have c1634 : v18 ∨ ¬v1 ∨ v7 ∨ v14 ∨ v15 ∨ v24 ∨ v26 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v28 := by
      rcases c1630 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
    have u11 : v34 := by
      rcases c1633 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v38 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v5 := by
      rcases c1627 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v20 := by
      rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u7 a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u17 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n6
    have u18 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u8
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1373 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd n1 a
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n9
    · exact absurd a n10
  have c1635 : ¬v1 ∨ v7 ∨ v14 ∨ v15 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c1630 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
    have u8 : v32 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
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
    have u9 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v38 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v21 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact a
    have u16 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n6
    have u18 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u6
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u9
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1373 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd n0 a
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n8
    · exact absurd a n9
  have c1636 : ¬v15 ∨ v14 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v9 := by
      rcases c349 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u4
    rcases c44 with a|a
    · exact absurd u5 a
    · exact absurd u3 a
  have c1637 : v18 ∨ ¬v1 ∨ v14 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
    have u6 : v28 := by
      rcases c1630 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v15 := by
      rcases c1636 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
    have u11 : v7 := by
      rcases c1635 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u5
    have u17 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n0
    have u18 : ¬v10 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u16
    have u19 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
    have u21 : v39 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd u19 a
      · exact absurd a n5
      · exact absurd a u2
    rcases c154 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1638 : v46 ∨ ¬v1 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
    have u5 : v14 := by
      rcases c1637 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
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
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n0
    have u12 : v20 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u3 a
    have u14 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u3 a
    have u15 : v32 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u16
    rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
  have c1639 : v3 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v33 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
    have u4 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    rcases c1632 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd n9 a
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1640 : v47 ∨ ¬v14 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v1 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v28 := by
      rcases c1621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u11 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v17 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u1
    have u13 : v20 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u14 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u9 a
    have u15 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u9 a
    have u16 : v3 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u18 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v6 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a u3
    rcases c760 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u14
  have c1641 : ¬v32 ∨ v15 ∨ v21 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n3 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n2
  have c1642 : v34 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n6
  have c1643 : v43 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : v29 := by
      rcases c1642 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    rcases c488 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n12
  have c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1429 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1645 : v49 ∨ v1 ∨ v15 ∨ v18 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v32 := by
      rcases c1641 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n8 a
    have u6 : ¬v8 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u7 : v34 := by
      rcases c1643 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u8 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
  have c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
  have c1648 : v49 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v1 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : ¬v14 := by
      rcases c1640 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u9 : v28 := by
      rcases c1621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v15 := by
      rcases c1636 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u12
    have u14 : v21 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n3
    have u17 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n3
    have u18 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u12
    have u19 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n0
    have u20 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u23 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd u22 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u24 : ¬v35 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u25 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a n0
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u11
  have c1649 : v28 ∨ v15 ∨ v18 ∨ ¬v19 ∨ ¬v21 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
    have u4 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n9
    have u7 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n11
    have u8 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n10
    rcases c25 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c1650 : v28 ∨ v1 ∨ v8 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n15
    have u3 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v6 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
    have u5 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u6 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd n12 a
      · exact absurd a n13
    have u7 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n11
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
  have c1651 : v21 ∨ v1 ∨ ¬v14 ∨ v15 ∨ v16 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v17 := by
      rcases c617 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u6
    have u8 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u7
    have u10 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u11 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    rcases c759 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n0
  have c1652 : v46 ∨ v1 ∨ v15 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v40 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u13 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n0
    have u14 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v21 := by
      rcases c1649 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u9 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
    have u17 : ¬v14 := by
      rcases c1651 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u18 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a n14
    have u19 : v8 := by
      rcases c1650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd u8 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v17 := by
      rcases c1369 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a u6
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n11
    · exact absurd a n0
  have c1653 : v14 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v7 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v2 := by
      rcases c436 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
    have u5 : v6 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c23 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd u5 a
  exact ⟨c1610, c1614, c1624, c1643, c1644, c1646, c1648, c1652, c1653⟩
