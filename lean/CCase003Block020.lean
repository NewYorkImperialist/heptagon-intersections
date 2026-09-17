import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1000-1049 of the 2559-step refutation of ccase003: 131 core clauses and 64 earlier-derived ones give 11 more. -/
theorem CCase003_block020
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v7 ∨ ¬v5 ∨ ¬v3)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c34 : v6 ∨ v3 ∨ v2 ∨ v5 ∨ v4 ∨ v1)
    (c36 : v6 ∨ v4 ∨ v1 ∨ v7 ∨ v2 ∨ v5)
    (c37 : v6 ∨ v3 ∨ v5 ∨ v7 ∨ v1 ∨ v4)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c80 : ¬v20 ∨ ¬v21)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c123 : v23 ∨ v27 ∨ v24 ∨ v28 ∨ v25 ∨ v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
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
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : ¬v44 ∨ ¬v43)
    (c168 : ¬v45 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c177 : ¬v44 ∨ ¬v49)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c206 : ¬v38 ∨ v37 ∨ v44 ∨ v30 ∨ v45 ∨ v39 ∨ v32 ∨ v31)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c226 : v29 ∨ v22 ∨ v28 ∨ v25 ∨ ¬v21 ∨ v14 ∨ v20 ∨ v18 ∨ v13 ∨ v15 ∨ v19 ∨ v11 ∨ v34 ∨ v35)
    (c233 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v30 ∨ v37 ∨ v49 ∨ v29)
    (c238 : ¬v10 ∨ v15 ∨ v24 ∨ v1 ∨ v3 ∨ v17 ∨ v18 ∨ v2 ∨ v9 ∨ v11 ∨ v8 ∨ v30 ∨ v31 ∨ v32)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c327 : v23 ∨ v22 ∨ v28 ∨ v7 ∨ v15 ∨ v19 ∨ v5 ∨ v1 ∨ v12 ∨ ¬v8 ∨ v16 ∨ v14 ∨ v9 ∨ v13)
    (c328 : ¬v32 ∨ v39 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31 ∨ v40)
    (c348 : ¬v44 ∨ v43 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v1 ∨ v45)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c367 : v43 ∨ ¬v35 ∨ v48 ∨ v41 ∨ v22 ∨ v42 ∨ v28 ∨ v34 ∨ v31 ∨ v29 ∨ v38 ∨ v24 ∨ v30 ∨ v49)
    (c397 : ¬v10 ∨ v16 ∨ v17 ∨ v3 ∨ v11 ∨ v2 ∨ v9 ∨ v18)
    (c400 : ¬v21 ∨ v22 ∨ v48 ∨ v28 ∨ v7 ∨ v13 ∨ v16 ∨ v23 ∨ v15 ∨ v14 ∨ v20 ∨ v43 ∨ v9 ∨ v49)
    (c424 : v19 ∨ ¬v18 ∨ v24 ∨ v5 ∨ v17 ∨ v4 ∨ v12 ∨ v22 ∨ v11 ∨ v3 ∨ v16 ∨ v25 ∨ v15 ∨ v8)
    (c432 : v16 ∨ v11 ∨ v17 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v2)
    (c437 : v44 ∨ ¬v10 ∨ v2 ∨ v18 ∨ v9 ∨ v45 ∨ v46 ∨ v11 ∨ v13 ∨ v12 ∨ v3 ∨ v20 ∨ v6 ∨ v17)
    (c459 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v39 ∨ v32)
    (c460 : ¬v27 ∨ v34 ∨ v20 ∨ v25 ∨ v28 ∨ v35 ∨ v17 ∨ v26 ∨ v40 ∨ v19 ∨ v24 ∨ v31 ∨ v41 ∨ v42)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c494 : v43 ∨ ¬v36 ∨ v49 ∨ v1 ∨ v30 ∨ v31 ∨ v37 ∨ v29 ∨ v38 ∨ v9 ∨ v8 ∨ v14 ∨ v45 ∨ v42)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c717 : ¬v4 ∨ ¬v5 ∨ v6 ∨ v13 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c945 : v29 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v35 ∨ v41 ∨ v42)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c991 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v18 ∨ v19)
    (c1006 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c1062 : v19 ∨ v18 ∨ ¬v25 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1134 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1144 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1220 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1297 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1311 : v40 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v34 ∨ v36 ∨ v42)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1352 : v20 ∨ v6 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1406 : ¬v14 ∨ v1 ∨ v15 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v35 ∨ v43 ∨ v49)
    (c1407 : ¬v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1424 : v49 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48)
    (c1428 : v37 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1482 : v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1484 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32)
    (c1492 : v17 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v30 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c1512 : v22 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1516 : ¬v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1531 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v19 ∨ v20)
    (c1543 : ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1544 : v45 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v35 ∨ v46 ∨ v47)
    (c1549 : v7 ∨ v17 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ ¬v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1571 : v24 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v39 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v38) ∧ (v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19) ∧ (v15 ∨ v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49) ∧ (v16 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40) ∧ (¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27) ∧ (¬v25 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35) ∧ (v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49) ∧ (v17 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v8 ∨ v11 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v45 ∨ v49) := by
  have c1572 : v5 ∨ v2 ∨ v6 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v3 := by
      rcases c34 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
    have u6 : v7 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u7 : v14 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u7 a
    rcases c363 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u1
  have c1573 : v39 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    rcases c459 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u2
  have c1574 : v3 ∨ v1 ∨ v2 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v38 := by
      rcases c1407 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n8 a
      · exact absurd a n9
    have u2 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : v31 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u4 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
    have u5 : v39 := by
      rcases c1573 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a u1
    rcases c153 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1575 : v47 ∨ v2 ∨ ¬v3 ∨ v5 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v6 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v13 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd u2 a
      · exact a
    have u6 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    rcases c363 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a u1
  have c1576 : v10 ∨ v2 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v3 := by
      rcases c1574 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
    have u5 : v5 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    have u7 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    rcases c363 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u1
  have c1577 : v28 ∨ ¬v5 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v2 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c1544 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
    have u12 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n12
      · exact a
      · exact absurd a n0
    have u13 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1573 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u13
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u15
    · exact absurd a n3
  have c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : v18 := by
      rcases c991 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u2 a
    rcases c1531 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u3
  have c1579 : v48 ∨ v3 ∨ v6 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v26 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n6 a
    have u7 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u3 a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n6 a
    have u9 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u3 a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c1544 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v5 := by
      rcases c1577 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u12 : v7 := by
      rcases c37 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u1
    have u13 : v14 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n10
    have u14 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
    have u16 : v29 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n6 a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n10
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1454 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a n8
  have c1580 : v28 ∨ v4 ∨ v7 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v29 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n10
    have u12 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    rcases c77 with a|a
    · exact absurd u12 a
    · exact absurd u10 a
  have c1581 : v35 ∨ v1 ∨ v4 ∨ v7 ∨ v17 ∨ v19 ∨ v25 ∨ v28 ∨ v29 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v42 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n14
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v43 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v45 := by
      rcases c168 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1218 with a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1582 : v25 ∨ v4 ∨ v7 ∨ v17 ∨ v24 ∨ v28 ∨ v29 ∨ v35 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v32 := by
      rcases c1581 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v38 := by
      rcases c906 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    rcases c1549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1583 : v15 ∨ v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n6 a
    rcases c400 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n12
  have c1584 : v7 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v26 ∨ v33 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u9 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u10 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v29 := by
      rcases c1580 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v39 := by
      rcases c1582 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v32 := by
      rcases c1224 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u7
    have u19 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n11
    have u20 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u22
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u25 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    rcases c226 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd u24 a
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n6
  have c1585 : v48 ∨ v6 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u6 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u9 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u10 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u6 a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u6 a
      · exact absurd n5 a
      · exact a
    have u12 : v2 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u13 : v3 := by
      rcases c1579 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1580 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u17 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u2
    have u18 : v35 := by
      rcases c1584 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u19 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u23 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u21
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n8
    have u25 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u26 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u27 : ¬v13 := by
      rcases c809 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u24
      · exact absurd a u26
    have u28 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v9 := by
      rcases c1006 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a n4
      · exact absurd a u11
    have u32 : ¬v8 := by
      rcases c327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u17
      · exact a
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u31
      · exact absurd a u27
    have u33 : ¬v36 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u33
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u32
    · exact absurd a u29
  have c1586 : v49 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u9 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u10 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u12 : v2 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u13 : v6 := by
      rcases c1585 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u17 : v13 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u19 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v16 := by
      rcases c1134 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
    have u22 : ¬v15 := by
      rcases c1144 with a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v18 := by
      rcases c424 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u20
    have u24 : ¬v29 := by
      rcases c1580 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u25 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u22
    have u26 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v32 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a u26
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c906 with a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u3
  have c1587 : v25 ∨ v4 ∨ v7 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v27 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
    have u2 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v39 := by
      rcases c1582 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v32 := by
      rcases c1224 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v20 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u13 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n10
    rcases c64 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c1588 : v16 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n4 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c1589 : v23 ∨ v1 ∨ v19 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ ¬v39 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v32 := by
      rcases c1224 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v49 := by
      rcases c177 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : v12 := by
      rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
    rcases c1588 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u14 a
    · exact absurd a n3
    · exact absurd a n0
  have c1590 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    rcases c328 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
  have c1591 : v35 ∨ v4 ∨ v7 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v28 := by
      rcases c1587 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u9 : ¬v39 := by
      rcases c1589 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd u4 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u2
    have u11 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
    have u13 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v30 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1492 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd u17 a
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1592 : v24 ∨ v7 ∨ v10 ∨ v17 ∨ v23 ∨ v25 ∨ v33 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v26 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v2 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v29 := by
      rcases c1591 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
    have u9 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v6 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u4 a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
    have u9 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n3
  have c1594 : v33 ∨ v7 ∨ v10 ∨ v17 ∨ v24 ∨ v25 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v26 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v23 := by
      rcases c1592 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd u5 a
    have u9 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u10 : v39 := by
      rcases c1582 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v32 := by
      rcases c1224 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u3
  have c1595 : v4 ∨ v10 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ ¬v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
    have u6 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u10 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u12 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n2
    have u13 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v44 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    rcases c1407 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd u14 a
    · exact absurd a n9
  have c1596 : v4 ∨ ¬v7 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
    have u3 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
    have u4 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
  have c1597 : v24 ∨ v10 ∨ v17 ∨ v25 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v26 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v35 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v7 := by
      rcases c1594 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v39 := by
      rcases c1596 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v32 := by
      rcases c1224 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n2
    have u11 : ¬v5 := by
      rcases c28 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u10 a
      · exact absurd u5 a
      · exact a
    have u13 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1578 with a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a u3
  have c1599 : ¬v32 ∨ v17 ∨ v22 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1600 : v49 ∨ v10 ∨ v17 ∨ v24 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v25 := by
      rcases c1597 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c1599 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u11 : v18 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
    have u12 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v34 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u6
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u16 a
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1601 : ¬v25 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : v18 := by
      rcases c1062 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u2 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n3 a
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
  have c1602 : v30 ∨ v1 ∨ v4 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v25 := by
      rcases c1601 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd n7 a
      · exact absurd a n11
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1603 : v49 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v4 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : v33 := by
      rcases c1600 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v26 := by
      rcases c1602 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
    have u18 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1604 : ¬v10 ∨ v1 ∨ ¬v7 ∨ v16 ∨ v17 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v6 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u1
    have u7 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u8 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u9 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    rcases c432 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u9
  have c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a n8
    have u2 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v29 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n9
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
  have c1606 : v37 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v31 ∨ ¬v36 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n8 a
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n8 a
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a u1
  have c1607 : ¬v36 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1606 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1608 : v45 ∨ v17 ∨ v24 ∨ ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v10 := by
      rcases c1603 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u10 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u3 a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u12 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
    have u13 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
    have u15 : ¬v7 := by
      rcases c1604 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v35 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u17 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v36 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n7
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u13
  have c1609 : v25 ∨ v1 ∨ ¬v5 ∨ ¬v10 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u6 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u7 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u8 : v16 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
    have u9 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u8 a
      · exact a
    rcases c238 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1610 : v46 ∨ v17 ∨ v24 ∨ ¬v35 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v10 := by
      rcases c1603 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v26 := by
      rcases c1608 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u12
    have u20 : ¬v36 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n7
    have u21 : v25 := by
      rcases c1609 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n0
    have u22 : ¬v23 := by
      rcases c102 with a|a|a
      · exact absurd u9 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u21 a
    have u24 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u21 a
    rcases c1562 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u18
  have c1611 : ¬v25 ∨ v1 ∨ ¬v10 ∨ v17 ∨ v24 ∨ ¬v27 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
    have u9 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u10 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
    have u11 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u13 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u14 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    rcases c432 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd n2 a
    · exact absurd a u14
  have c1612 : v35 ∨ v1 ∨ ¬v10 ∨ v16 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v43 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v15 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
    have u6 : v30 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
    have u7 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u5
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v4 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n10
    have u16 : v6 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    rcases c32 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c1613 : v26 ∨ v1 ∨ ¬v10 ∨ v17 ∨ v19 ∨ v22 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v35 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v25 := by
      rcases c1611 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v23 := by
      rcases c118 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
    have u5 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd n7 a
    have u6 : v16 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v30 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u10 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
    rcases c133 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1614 : v46 ∨ v17 ∨ v22 ∨ v24 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v35 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v10 := by
      rcases c1603 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v26 := by
      rcases c1608 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v25 := by
      rcases c1611 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
    have u16 : v28 := by
      rcases c1613 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u2 a
    have u18 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n3
    have u19 : ¬v15 := by
      rcases c1588 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u17
    have u20 : ¬v30 := by
      rcases c1492 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v29 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a n2
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
    have u22 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u25 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n0
    have u26 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u25 a
    have u28 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u25 a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a u11
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u15
  have c1615 : ¬v29 ∨ ¬v10 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n8
    have u12 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u17 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u11 a
    have u19 : v16 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u14
    have u20 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v44 := by
      rcases c437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n2
    have u23 : ¬v49 := by
      rcases c177 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u23
    have u26 : v27 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u23
    have u27 : v22 := by
      rcases c1614 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u23
    have u28 : v28 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a n10
      · exact absurd a u23
    rcases c96 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u26 a
  have c1616 : v30 ∨ v1 ∨ ¬v10 ∨ v17 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd n9 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v29 := by
      rcases c1615 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u1
    have u13 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n12
    have u17 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u19 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u16 a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u6
  have c1617 : v17 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v35 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v22 := by
      rcases c1614 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd u7 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd u7 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u4 a
    have u11 : v10 := by
      rcases c1603 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v30 := by
      rcases c1616 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
    have u22 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n3
    have u24 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u20 a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u21 a
      · exact a
    rcases c717 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd u20 a
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u24
    · exact absurd a n6
  have c1618 : v8 ∨ v11 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n8
    have u13 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u12 a
    have u19 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u9 a
      · exact absurd a u2
    have u21 : ¬v38 := by
      rcases c1407 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u8 a
      · exact absurd a n7
    have u22 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u17
      · exact absurd a u21
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n7
    have u23 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u14
    rcases c146 with a|a
    · exact absurd u22 a
    · exact absurd u23 a
  have c1619 : v24 ∨ v8 ∨ v11 ∨ v12 ∨ v22 ∨ v25 ∨ v26 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v30 := by
      rcases c1618 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v29 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n12
    have u12 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c1593 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u5 a
    have u16 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n9
    have u18 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
    have u23 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u17 a
    have u24 : v36 := by
      rcases c1311 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd u11 a
      · exact absurd a u13
      · exact a
      · exact absurd a u21
    have u25 : ¬v38 := by
      rcases c1407 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd u4 a
      · exact absurd a n8
    have u26 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a u25
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n8
    rcases c146 with a|a
    · exact absurd u26 a
    · exact absurd u24 a
  have c1620 : v45 ∨ v8 ∨ v11 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v22 := by
      rcases c1619 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v29 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
    have u9 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u2 a
      · exact a
    rcases c128 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1621 : v8 ∨ v11 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v17 := by
      rcases c1617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v35 := by
      rcases c1620 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u12
    have u15 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u6
    have u16 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
  have c1622 : ¬v35 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v36 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n6
    have u8 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v44 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u7 a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u4
    have u13 : v27 := by
      rcases c945 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u10
    have u14 : ¬v48 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v24 := by
      rcases c367 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a n8
    have u16 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
    have u19 : v17 := by
      rcases c1484 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
    have u20 : v21 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n8
    rcases c74 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  exact ⟨c1573, c1578, c1583, c1588, c1590, c1593, c1601, c1605, c1617, c1621, c1622⟩
