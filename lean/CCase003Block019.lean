import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 950-999 of the 2559-step refutation of ccase003: 123 core clauses and 64 earlier-derived ones give 12 more. -/
theorem CCase003_block019
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c38 : ¬v8 ∨ ¬v9)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c62 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
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
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c145 : v29 ∨ v30 ∨ v32 ∨ v35 ∨ v34 ∨ v31 ∨ v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c147 : ¬v38 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c167 : ¬v44 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c177 : ¬v44 ∨ ¬v49)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c201 : v43 ∨ v12 ∨ v5 ∨ v7 ∨ v2 ∨ v21 ∨ v8 ∨ v15 ∨ v16 ∨ v6 ∨ ¬v1 ∨ v9 ∨ v47 ∨ v49)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c212 : ¬v32 ∨ v39 ∨ v37 ∨ v3 ∨ v25 ∨ v24 ∨ v4 ∨ v23 ∨ v30 ∨ v5 ∨ v31 ∨ v33 ∨ v40 ∨ v46)
    (c217 : ¬v32 ∨ v39 ∨ v18 ∨ v28 ∨ v25 ∨ v33 ∨ v40 ∨ v24 ∨ v35 ∨ v34 ∨ v19 ∨ v31 ∨ v17 ∨ v42)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c328 : ¬v32 ∨ v39 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31 ∨ v40)
    (c339 : v36 ∨ v23 ∨ v42 ∨ ¬v29 ∨ v30 ∨ v22 ∨ v35 ∨ v28)
    (c342 : v36 ∨ ¬v29 ∨ v2 ∨ v31 ∨ v22 ∨ v1 ∨ v24 ∨ v23 ∨ v38 ∨ v35 ∨ v30 ∨ v7 ∨ v42 ∨ v43)
    (c359 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v34 ∨ v36 ∨ v49 ∨ v41)
    (c366 : ¬v12 ∨ v6 ∨ v19 ∨ v13 ∨ v20 ∨ v11 ∨ v4 ∨ v5)
    (c367 : v43 ∨ ¬v35 ∨ v48 ∨ v41 ∨ v22 ∨ v42 ∨ v28 ∨ v34 ∨ v31 ∨ v29 ∨ v38 ∨ v24 ∨ v30 ∨ v49)
    (c391 : ¬v8 ∨ v9 ∨ v15 ∨ v20 ∨ v13 ∨ v6 ∨ v16 ∨ v22 ∨ v1 ∨ v14 ∨ v7 ∨ v29 ∨ v30 ∨ v35)
    (c400 : ¬v21 ∨ v22 ∨ v48 ∨ v28 ∨ v7 ∨ v13 ∨ v16 ∨ v23 ∨ v15 ∨ v14 ∨ v20 ∨ v43 ∨ v9 ∨ v49)
    (c412 : v12 ∨ v47 ∨ v5 ∨ v7 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v13)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c423 : ¬v44 ∨ v37 ∨ v2 ∨ v23 ∨ v36 ∨ v24 ∨ v4 ∨ v3 ∨ v22 ∨ v30 ∨ v39 ∨ v43 ∨ v45 ∨ v46)
    (c431 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v22 ∨ v29)
    (c459 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v39 ∨ v32)
    (c462 : v43 ∨ v36 ∨ v38 ∨ v1 ∨ v37 ∨ v2 ∨ ¬v44 ∨ v45)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c480 : ¬v44 ∨ v37 ∨ v24 ∨ v7 ∨ v22 ∨ v43 ∨ v38 ∨ v1 ∨ v2 ∨ v23 ∨ v42 ∨ v30 ∨ v45 ∨ v49)
    (c493 : v11 ∨ v6 ∨ v46 ∨ v2 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v18 ∨ v16 ∨ v13 ∨ v9 ∨ v10 ∨ v47 ∨ v48)
    (c504 : ¬v44 ∨ v29 ∨ v30 ∨ v2 ∨ v1 ∨ v6 ∨ v37 ∨ v38 ∨ v41 ∨ v31 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c542 : v23 ∨ ¬v18 ∨ v12 ∨ v17 ∨ v45 ∨ v25 ∨ v11 ∨ v24 ∨ v9 ∨ v4 ∨ v16 ∨ v19 ∨ v46 ∨ v47)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c714 : ¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c717 : ¬v4 ∨ ¬v5 ∨ v6 ∨ v13 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c720 : v45 ∨ v6 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c723 : v46 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c850 : v35 ∨ ¬v23 ∨ v26 ∨ ¬v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c870 : v5 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c876 : ¬v27 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c910 : ¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c991 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v18 ∨ v19)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1006 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c1010 : v32 ∨ ¬v25 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1062 : v19 ∨ v18 ∨ ¬v25 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1220 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1227 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46)
    (c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1261 : ¬v42 ∨ v1 ∨ v2 ∨ ¬v44 ∨ v45)
    (c1268 : v35 ∨ v11 ∨ ¬v13 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1334 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28)
    (c1363 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1381 : ¬v7 ∨ ¬v1 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47)
    (c1387 : ¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1391 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1406 : ¬v14 ∨ v1 ∨ v15 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v35 ∨ v43 ∨ v49)
    (c1407 : ¬v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1434 : ¬v13 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1482 : v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1489 : ¬v1 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1512 : v22 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1514 : ¬v25 ∨ v18 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1516 : ¬v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1519 : v8 ∨ ¬v1 ∨ v4 ∨ v6 ∨ v7 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v43 ∨ v49)
    (c1520 : ¬v26 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v21 ∨ ¬v27)
    (c1521 : v33 ∨ v4 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    : (v11 ∨ ¬v1 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v19 ∨ v20) ∧ (v12 ∨ v4 ∨ v6 ∨ v11 ∨ ¬v18 ∨ v19 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v45 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v35 ∨ v46 ∨ v47) ∧ (v7 ∨ v17 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ ¬v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v8 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v20 ∨ v22 ∨ v29 ∨ v30 ∨ v35) ∧ (v16 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28) ∧ (¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28) ∧ (v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (v24 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1522 : v18 ∨ ¬v1 ∨ v4 ∨ v7 ∨ v8 ∨ v10 ∨ v14 ∨ ¬v21 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
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
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n12
    have u8 : v9 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n12
    have u9 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v26 := by
      rcases c1520 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd u3 a
    have u12 : v33 := by
      rcases c1521 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v25 := by
      rcases c1062 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u16
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u18
  have c1523 : v18 ∨ ¬v1 ∨ v4 ∨ v6 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v33 := by
      rcases c1521 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c1062 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u7
  have c1524 : ¬v21 ∨ ¬v1 ∨ v4 ∨ v7 ∨ v10 ∨ v14 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n11
    have u10 : v8 := by
      rcases c1522 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v26 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u14 a
    have u16 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u14 a
    have u17 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u5 a
      · exact absurd u14 a
      · exact a
    rcases c400 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a n11
  have c1525 : v10 ∨ ¬v1 ∨ v4 ∨ v7 ∨ v18 ∨ ¬v21 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n10
    have u8 : v14 := by
      rcases c1524 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v26 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v3 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u11 a
    have u14 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u3 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u11 a
    have u16 : v32 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u14
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u2
    have u24 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a n10
    have u25 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u23 a
      · exact a
    rcases c1387 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1526 : v10 ∨ ¬v1 ∨ v7 ∨ v18 ∨ v21 ∨ ¬v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
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
    have u4 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n5 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u2 a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n5 a
    have u7 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u2 a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n5 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n10
    have u11 : v32 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n10
    have u21 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v14 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v39 := by
      rcases c1387 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u20
      · exact a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u27 : ¬v3 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a u26
  have c1527 : ¬v1 ∨ v4 ∨ v7 ∨ v10 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
    have u7 : ¬v21 := by
      rcases c1525 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v26 := by
      rcases c1526 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v12 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v5 := by
      rcases c991 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u1
    rcases c1489 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n9
  have c1528 : v7 ∨ ¬v1 ∨ v4 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
    have u7 : v10 := by
      rcases c1527 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v26 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u10 a
    have u12 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u10 a
    have u13 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u2 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
    have u15 : v32 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
    rcases c1379 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
  have c1529 : v11 ∨ ¬v1 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1530 : v18 ∨ ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
    have u7 : ¬v4 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v7 := by
      rcases c1528 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c991 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u3
    have u11 : v26 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u11 a
    have u13 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u11 a
    have u15 : v32 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
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
    have u20 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a n6
    have u23 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v37 := by
      rcases c1381 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact a
      · exact absurd a u23
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : v39 := by
      rcases c1387 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u22
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c153 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1531 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    rcases c366 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
  have c1532 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v23 ∨ v24 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c1006 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n0
    rcases c542 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n6 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
  have c1533 : ¬v26 ∨ v4 ∨ v11 ∨ v12 ∨ ¬v18 ∨ v19 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n6 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n6 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1534 : v12 ∨ v4 ∨ v6 ∨ v11 ∨ ¬v18 ∨ v19 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v26 := by
      rcases c1533 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v33 := by
      rcases c1521 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v28 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n6 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact a
    have u9 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u8 a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n6 a
    rcases c1455 with a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n8
  have c1535 : v11 ∨ ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
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
    have u4 : v18 := by
      rcases c1530 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v12 := by
      rcases c1534 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v5 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
    rcases c1489 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a n6
  have c1536 : v26 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ v10 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v33 := by
      rcases c1521 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v28 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n12 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact a
    have u8 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u6
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u7 a
      · exact absurd n12 a
      · exact a
    have u10 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n12 a
    have u11 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n12 a
    have u12 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n12 a
    have u13 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n14
    have u16 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n8
    have u18 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v7 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
    have u22 : v44 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u23 : ¬v49 := by
      rcases c177 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u22 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n11
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a n15
    · exact absurd a u23
  have c1537 : v24 ∨ ¬v1 ∨ v28 ∨ ¬v33 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v11 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v18 := by
      rcases c1530 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n2
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u10
    rcases c7 with a|a|a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1538 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n3
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v30 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u5
  have c1539 : ¬v1 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v11 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v18 := by
      rcases c1530 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v31 := by
      rcases c1538 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v38 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n7
    have u15 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n13
    have u16 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd u17 a
      · exact a
    rcases c423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
  have c1540 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v5 ∨ v9 ∨ v10 ∨ v12 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v7 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : v44 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v49 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v48 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v6 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
    have u12 : v18 := by
      rcases c1530 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u12 a
    rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u8
  have c1541 : v24 ∨ ¬v1 ∨ v3 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v18 := by
      rcases c1530 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v11 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1537 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v32 := by
      rcases c1539 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
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
    have u15 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u4
    have u18 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n9
  have c1542 : v4 ∨ ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
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
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v18 := by
      rcases c1530 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v11 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v3 := by
      rcases c1540 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v26 := by
      rcases c1536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u16 a
    have u18 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u16 a
    have u19 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u16 a
    have u20 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact a
    have u22 : v35 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u7
    have u28 : v39 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u26
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c1235 with a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1543 : ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v4 := by
      rcases c1542 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u7 : v11 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v18 := by
      rcases c1518 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
    have u14 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u13 a
    rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n5
  have c1544 : v45 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ ¬v35 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
    have u6 : v39 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    rcases c1235 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1545 : v31 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v19 ∨ v24 ∨ ¬v27 ∨ v32 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n5
    have u2 : ¬v35 := by
      rcases c1544 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v49 := by
      rcases c177 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v2 := by
      rcases c1407 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n10 a
      · exact absurd a n11
    have u8 : v30 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v7 := by
      rcases c20 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u6
    have u18 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd u17 a
    have u19 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd u17 a
    have u20 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u18
    rcases c642 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u18
  have c1546 : v42 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v19 ∨ ¬v27 ∨ v33 ∨ v35 ∨ ¬v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v2 := by
      rcases c1407 with a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n10 a
      · exact absurd a n11
    have u2 : ¬v7 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u4 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
    have u10 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u9 a
    have u12 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u10
    rcases c642 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u10
  have c1547 : v46 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v24 ∨ v32 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v35 := by
      rcases c1544 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v31 := by
      rcases c1545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n10
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v42 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u15
    have u17 : ¬v25 := by
      rcases c1010 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v38 := by
      rcases c1546 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u19 : v23 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n6
    have u20 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u4 a
    have u21 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u19 a
    rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd u4 a
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1548 : v49 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c1544 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v32 := by
      rcases c1547 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u12 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n0
    have u13 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n4
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v2 := by
      rcases c1407 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n6
    have u16 : ¬v7 := by
      rcases c20 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n2 a
    have u17 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n2 a
    have u18 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u17
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u14
    have u24 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u23 a
    have u25 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u23 a
    have u26 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n0
    rcases c642 with a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u24
  have c1549 : v7 ∨ v17 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ ¬v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : v32 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u11 : v25 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n10
    have u12 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u11 a
    have u14 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u12
    have u15 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u14 a
      · exact a
    rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1550 : v24 ∨ v7 ∨ v17 ∨ ¬v32 ∨ v35 ∨ ¬v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v28 := by
      rcases c1549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    rcases c328 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u6
  have c1551 : ¬v28 ∨ v24 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n3 a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1552 : v24 ∨ v31 ∨ v32 ∨ v35 ∨ ¬v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v30 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v28 := by
      rcases c1551 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v26 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u6 a
      · exact absurd u11 a
      · exact a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u7
  have c1553 : v28 ∨ v1 ∨ v7 ∨ v10 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v14 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v15 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
    have u5 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    rcases c1334 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
  have c1554 : ¬v8 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v20 ∨ v22 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    rcases c391 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1555 : v29 ∨ v6 ∨ v7 ∨ v10 ∨ v17 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c1010 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n19
    have u7 : v26 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u2 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u7 a
    have u10 : v21 := by
      rcases c1553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n18
      · exact absurd a n19
    have u11 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u12
    have u15 : ¬v14 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n19
    rcases c1554 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n10
  have c1556 : v2 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v17 ∨ v24 ∨ v35 ∨ ¬v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v32 := by
      rcases c1550 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v31 := by
      rcases c1552 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v25 := by
      rcases c1010 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v28 := by
      rcases c1555 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v26 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
    have u16 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u7 a
    have u17 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u7 a
    have u18 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n11
    have u19 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u3
    have u20 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v16 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u19 a
      · exact absurd a u18
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
    rcases c753 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u17
  have c1557 : v34 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n2
  have c1558 : v23 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v35 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n13
    have u6 : v37 := by
      rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u7 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u10
    have u12 : ¬v31 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u11
    have u13 : ¬v29 := by
      rcases c342 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
    have u14 : v34 := by
      rcases c1557 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
    have u15 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n15
    have u17 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u10
    have u18 : ¬v13 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u19 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v16 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n16
    rcases c753 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
  have c1559 : v10 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v24 ∨ ¬v28 ∨ v35 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd n6 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n6 a
      · exact absurd u1 a
      · exact a
    have u7 : v30 := by
      rcases c1558 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n11
    have u14 : ¬v13 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u12
    have u16 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v16 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u15 a
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    rcases c753 with a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
  have c1560 : v16 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n2 a
      · exact a
    rcases c1334 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1560 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
  have c1563 : v28 ∨ v2 ∨ v6 ∨ v7 ∨ v10 ∨ v24 ∨ ¬v30 ∨ v35 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u6 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n9
    have u13 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n13
    have u14 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v26 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
    have u18 : v37 := by
      rcases c714 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd u7 a
      · exact absurd n6 a
      · exact absurd a u1
      · exact a
      · exact absurd a n8
    have u19 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u11
    have u21 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u21
      · exact a
      · exact absurd a n13
      · exact absurd a u12
      · exact absurd a n0
    have u25 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n5
    have u26 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    rcases c400 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u17
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a n13
  have c1564 : v28 ∨ v1 ∨ v2 ∨ v7 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v35 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v48 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n11 a
      · exact absurd a n12
    have u4 : v37 := by
      rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v29 := by
      rcases c339 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
    have u7 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u8 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u8
      · exact a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n0
    have u12 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u11 a
    rcases c400 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n13
  have c1565 : v28 ∨ ¬v23 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v25 := by
      rcases c102 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v34 := by
      rcases c850 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u13 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
    have u14 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
    have u15 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v6 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u20 a
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v5 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n10
    have u25 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u3
    have u27 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u20 a
    have u28 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u26 a
    rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a n7
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd u26 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a n8
    · exact absurd a n9
  have c1566 : v28 ∨ v2 ∨ ¬v23 ∨ v30 ∨ v35 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
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
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n6
    have u6 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v37 := by
      rcases c1565 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v36 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n6
    have u11 : v29 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u12 : ¬v31 := by
      rcases c125 with a|a
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
    have u15 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u12
    have u16 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u12
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u8
  have c1567 : v2 ∨ v5 ∨ v6 ∨ v10 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v16 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v20 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n1
    rcases c69 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v40 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    rcases c1272 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1569 : v47 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v17 ∨ v24 ∨ v35 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n9
    have u7 : ¬v38 := by
      rcases c1556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v28 := by
      rcases c1559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n12
    have u10 : ¬v12 := by
      rcases c1567 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u11 : ¬v30 := by
      rcases c1563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v23 := by
      rcases c1566 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v22 := by
      rcases c1564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n12
    have u14 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u16 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u17 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u22 : v37 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u20
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u22 a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u14
  have c1570 : v26 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v10 ∨ v19 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v18 := by
      rcases c1567 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v22 := by
      rcases c876 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u4
  have c1571 : v24 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v27 := by
      rcases c1482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v19 := by
      rcases c1516 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v1 := by
      rcases c1543 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c1548 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u9 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u11 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n4
    have u12 : v35 := by
      rcases c1569 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v37 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v26 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u25 a
    have u27 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u25 a
    rcases c367 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u12 a
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a n8
  exact ⟨c1529, c1531, c1534, c1543, c1544, c1549, c1554, c1560, c1561, c1562, c1568, c1571⟩
