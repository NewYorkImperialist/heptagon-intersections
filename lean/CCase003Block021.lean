import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1050-1099 of the 2559-step refutation of ccase003: 131 core clauses and 61 earlier-derived ones give 16 more. -/
theorem CCase003_block021
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c81 : v16 ∨ v15 ∨ v17 ∨ v20 ∨ v19 ∨ v18 ∨ v21)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : ¬v44 ∨ ¬v43)
    (c168 : ¬v45 ∨ ¬v43)
    (c173 : ¬v45 ∨ ¬v44)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c288 : ¬v14 ∨ v6 ∨ v20 ∨ v21 ∨ v7 ∨ v13 ∨ v1 ∨ v8)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c329 : v10 ∨ v12 ∨ v17 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v4 ∨ v3)
    (c335 : ¬v12 ∨ v6 ∨ v26 ∨ v21 ∨ v33 ∨ v7 ∨ v14 ∨ v5 ∨ v19 ∨ v13 ∨ v32 ∨ v11 ∨ v18 ∨ v34)
    (c348 : ¬v44 ∨ v43 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v1 ∨ v45)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c388 : v23 ∨ v30 ∨ v17 ∨ v25 ∨ v31 ∨ v18 ∨ ¬v24 ∨ v16)
    (c398 : v15 ∨ ¬v9 ∨ v17 ∨ v8 ∨ v10 ∨ v3 ∨ v2 ∨ v16)
    (c410 : v23 ∨ ¬v24 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17 ∨ v16)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c429 : ¬v39 ∨ v46 ∨ v32 ∨ v33 ∨ v40 ∨ v38 ∨ v31 ∨ v47)
    (c431 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v22 ∨ v29)
    (c441 : ¬v45 ∨ v23 ∨ v25 ∨ v31 ∨ v1 ∨ v2 ∨ v24 ∨ v3 ∨ v38 ∨ v36 ∨ v39 ∨ v43 ∨ v44 ∨ v46)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c474 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v8 ∨ v2 ∨ v9)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c483 : v43 ∨ ¬v36 ∨ v49 ∨ v44 ∨ v29 ∨ v35 ∨ v42 ∨ v37)
    (c493 : v11 ∨ v6 ∨ v46 ∨ v2 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v18 ∨ v16 ∨ v13 ∨ v9 ∨ v10 ∨ v47 ∨ v48)
    (c497 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v2 ∨ v21 ∨ v7 ∨ v1)
    (c506 : ¬v8 ∨ v9 ∨ v15 ∨ v22 ∨ v30 ∨ v1 ∨ v29 ∨ v21 ∨ v14 ∨ v2 ∨ v10 ∨ v3 ∨ v35 ∨ v17)
    (c531 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v44 ∨ v3 ∨ v4 ∨ v2)
    (c550 : v43 ∨ ¬v37 ∨ v44 ∨ v29 ∨ v31 ∨ v30 ∨ v36 ∨ v38)
    (c555 : v23 ∨ v16 ∨ v24 ∨ v18 ∨ v25 ∨ ¬v17 ∨ v10 ∨ v11)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c656 : v4 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c717 : ¬v4 ∨ ¬v5 ∨ v6 ∨ v13 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1032 : ¬v27 ∨ ¬v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1133 : ¬v1 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1201 : ¬v24 ∨ v16 ∨ v17 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32)
    (c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1236 : v20 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1268 : v35 ∨ v11 ∨ ¬v13 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1348 : v19 ∨ ¬v1 ∨ v6 ∨ v12 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1407 : ¬v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1482 : v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1484 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1512 : v22 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1514 : ¬v25 ∨ v18 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33)
    (c1516 : ¬v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1601 : ¬v25 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1617 : v17 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1621 : v8 ∨ v11 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1622 : ¬v35 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v45 ∨ v49)
    : (v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25) ∧ (¬v35 ∨ ¬v24 ∨ ¬v27) ∧ (v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25) ∧ (v32 ∨ v1 ∨ ¬v24 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44) ∧ (¬v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35) ∧ (v49 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21) ∧ (¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v12 ∨ ¬v15 ∨ v22 ∨ v23) ∧ (v48 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v35 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v1 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1623 : v25 ∨ ¬v10 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v26 := by
      rcases c1621 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u14 a
    have u17 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u14 a
    have u18 : ¬v35 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n7
    have u19 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n7
    have u20 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u23 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v38 := by
      rcases c1407 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd u9 a
      · exact absurd a n3
    have u25 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u11
      · exact absurd a u24
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a n3
    have u26 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v32 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u26
      · exact absurd a n4
    rcases c906 with a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u27
  have c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c555 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    rcases c635 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c1625 : v35 ∨ v1 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v30 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    rcases c133 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1626 : ¬v23 ∨ v1 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd n8 a
    have u5 : v35 := by
      rcases c1625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u5 a
      · exact a
    rcases c799 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
  have c1627 : v25 ∨ v23 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
    rcases c1623 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1628 : v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v23 := by
      rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v25 := by
      rcases c1627 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u14
    have u16 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u14
    have u17 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u13 a
    have u18 : v35 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u18 a
      · exact a
    rcases c1514 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u8
    · exact absurd u2 a
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u20
  have c1629 : ¬v35 ∨ ¬v24 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
    have u11 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact a
    have u12 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u11 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u9
  have c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v30 := by
      rcases c388 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n1
    have u2 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    rcases c410 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
  have c1631 : ¬v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v24 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v22 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u13
    have u16 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u15 a
      · exact a
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1632 : v32 ∨ v1 ∨ ¬v24 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v22 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u5 : v17 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1633 : v30 ∨ v1 ∨ v19 ∨ ¬v24 ∨ ¬v27 ∨ v29 ∨ v31 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c1629 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u2 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : v32 := by
      rcases c1632 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1032 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u1
  have c1634 : ¬v30 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v24 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u12 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
    have u13 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u12 a
      · exact a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd u5 a
    · exact absurd a u8
  have c1635 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v31 := by
      rcases c1631 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v24 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v30 := by
      rcases c1634 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v35 := by
      rcases c1629 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u6 a
    have u8 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u3 a
      · exact absurd u6 a
      · exact a
    have u9 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v29 := by
      rcases c1633 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    rcases c1032 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u3 a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u7
  have c1636 : v1 ∨ ¬v4 ∨ v11 ∨ v15 ∨ v18 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v6 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v5 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n16
    have u9 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u1
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n11
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n16
    · exact absurd u12 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u11
  have c1637 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    rcases c429 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n6
  have c1638 : v47 ∨ v26 ∨ ¬v27 ∨ v28 ∨ ¬v29 ∨ v32 ∨ v35 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
    have u10 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n1
    have u11 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
    have u12 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u13 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v1 := by
      rcases c1636 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v7 := by
      rcases c1133 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
    have u20 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u18 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v14 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u19
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v12 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u18 a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c57 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c1639 : v21 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v7 := by
      rcases c1133 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v14 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u6 a
    rcases c1348 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1640 : v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n0
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v22 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n7
    have u11 : ¬v1 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1641 : v29 ∨ v15 ∨ ¬v22 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c85 with a|a|a
    · exact absurd n3 a
    · exact absurd n2 a
    · exact absurd u1 a
  have c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1237 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1643 : v30 ∨ v1 ∨ v15 ∨ v21 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c1641 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u4 : v16 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n5
    have u12 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a u10
  have c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n4
  have c1645 : v26 ∨ v1 ∨ v21 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v15 := by
      rcases c1643 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
    have u15 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v13 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v6 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u17 a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v14 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v7 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u20
    have u23 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1149 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd a u21
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1646 : v21 ∨ v4 ∨ v6 ∨ v12 ∨ ¬v15 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    rcases c142 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1647 : v31 ∨ v19 ∨ v21 ∨ v22 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v20 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n5 a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
    have u3 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u6 : v23 := by
      rcases c1484 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c1226 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n3
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n0
  have c1648 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c550 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
  have c1649 : v44 ∨ v2 ∨ v9 ∨ v21 ∨ v22 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ ¬v33 ∨ v35 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u4 : v19 := by
      rcases c1647 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n9
    have u7 : v24 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd u6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    rcases c99 with a|a|a
    · exact absurd n6 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1650 : v32 ∨ ¬v7 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v15 := by
      rcases c1646 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n15
    have u12 : ¬v22 := by
      rcases c1641 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v33 := by
      rcases c1649 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u8
    have u14 : v19 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v34 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a u13
      · exact a
      · exact absurd a n11
    have u16 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n13
    have u20 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n8 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u13
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u19
  have c1651 : v35 ∨ ¬v14 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v7 := by
      rcases c1650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u2
      · exact a
      · exact absurd a u4
    have u14 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u13 a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v15 := by
      rcases c1646 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v22 := by
      rcases c1641 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u16
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u18 : v20 := by
      rcases c294 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd n1 a
    have u19 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v25 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a u23
      · exact absurd a n0
    have u26 : ¬v24 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a n7
    have u27 : v23 := by
      rcases c118 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a u26
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u19
    · exact absurd u27 a
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a u17
  have c1652 : v32 ∨ ¬v1 ∨ ¬v7 ∨ v12 ∨ v26 ∨ ¬v27 ∨ ¬v34 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u6 : v19 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
    have u12 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u10
    have u13 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a n4
    rcases c329 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd u12 a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u5
  have c1653 : v30 ∨ v12 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n11
    have u8 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v14 := by
      rcases c1651 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u1 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u1 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v34 := by
      rcases c1652 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v15 := by
      rcases c1646 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v22 := by
      rcases c1641 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u18 : v33 := by
      rcases c1640 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v38 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v25 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u15
      · exact a
      · exact absurd a u22
      · exact absurd a n3
    have u25 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u24 a
    have u26 : ¬v23 := by
      rcases c102 with a|a|a
      · exact absurd n4 a
      · exact absurd u24 a
      · exact a
    have u27 : v19 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n7
    have u28 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u5
    have u29 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u29
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n0
    have u32 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u31 a
      · exact a
    rcases c398 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u31 a
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u32
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u29
  have c1654 : v48 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ ¬v31 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
    have u4 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n1
    have u5 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    rcases c1639 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
  have c1655 : ¬v27 ∨ ¬v12 ∨ v21 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v31 := by
      rcases c1654 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n12
    have u12 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u15 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u19 : v19 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd n1 a
      · exact a
    have u20 : v38 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
    have u21 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n5
    have u25 : v25 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n9
      · exact a
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u23
    rcases c102 with a|a|a
    · exact absurd n0 a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1656 : v28 ∨ ¬v12 ∨ v26 ∨ ¬v27 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v21 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v22 := by
      rcases c642 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n0
    rcases c1641 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd u7 a
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n7
  have c1657 : v32 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v31 := by
      rcases c1654 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v12 := by
      rcases c1656 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v21 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v22 := by
      rcases c1641 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u11 : ¬v24 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n0
    have u12 : ¬v23 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
    rcases c118 with a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u11
  have c1658 : ¬v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v24 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c1641 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
    have u8 : ¬v23 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c118 with a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u6
  have c1659 : ¬v27 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c1638 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v31 := by
      rcases c1654 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u6 : v34 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v21 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
    have u10 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v12 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n2
    have u15 : v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u15 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact a
    have u19 : v19 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u11 a
      · exact a
    have u20 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v25 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n6
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u10
    rcases c1514 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u7
  have c1660 : v35 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v32 := by
      rcases c1659 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
    have u8 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n1
    have u9 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v22 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n0
    have u14 : ¬v1 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1661 : v49 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v30 := by
      rcases c1660 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u10 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v25 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
    have u12 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n1
    have u13 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v1 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u20 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
    rcases c1636 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
  have c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c483 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
  have c1664 : v48 ∨ v1 ∨ v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v36 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : v37 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n9 a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u2
    have u6 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n2
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u8 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u8
    have u17 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u7
    have u18 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v16 := by
      rcases c636 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a n1
  have c1665 : v39 ∨ ¬v1 ∨ v6 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u8 : v12 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u8 a
      · exact a
    rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n10
  have c1666 : v20 ∨ ¬v1 ∨ v6 ∨ v15 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v12 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    rcases c81 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n5
  have c1667 : v49 ∨ v15 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u7 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n0
    have u12 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
    have u14 : v1 := by
      rcases c1664 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u14 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u16 : ¬v20 := by
      rcases c1665 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u15
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v19 := by
      rcases c1666 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u12
    have u23 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u22 a
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u14 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u20
  have c1669 : ¬v12 ∨ ¬v15 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
  have c1670 : v24 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n11
    have u14 : v37 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n6 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u2
    have u15 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v15 := by
      rcases c1667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v12 := by
      rcases c1669 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a n3
    have u21 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u8
    have u23 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u21 a
    have u24 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u21 a
    have u25 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u21 a
    rcases c441 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n8
  have c1671 : ¬v1 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
    have u6 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v16 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v20 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u2
    rcases c69 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c1672 : v48 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v35 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u7 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n10
    have u12 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n10
    have u14 : v21 := by
      rcases c1670 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u15 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u21 : ¬v1 := by
      rcases c1671 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u22 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u17
    have u23 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u8
    have u27 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u20 a
    have u28 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u20 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u27
  have c1673 : ¬v1 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v12 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v7 := by
      rcases c1133 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
    have u12 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a u9
    have u13 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
    rcases c1578 with a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd u6 a
    · exact absurd a n1
  exact ⟨c1624, c1629, c1630, c1632, c1635, c1637, c1642, c1644, c1648, c1658, c1661, c1662, c1663, c1669, c1672, c1673⟩
