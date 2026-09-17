import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1100-1149 of the 2559-step refutation of ccase003: 139 core clauses and 57 earlier-derived ones give 23 more. -/
theorem CCase003_block022
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c19 : ¬v2 ∨ ¬v4 ∨ ¬v6)
    (c20 : ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
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
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c168 : ¬v45 ∨ ¬v43)
    (c173 : ¬v45 ∨ ¬v44)
    (c181 : ¬v45 ∨ ¬v49)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c199 : v43 ∨ v49 ∨ ¬v7 ∨ v48 ∨ v1 ∨ v13 ∨ v6 ∨ v14)
    (c204 : v43 ∨ ¬v8 ∨ v4 ∨ v16 ∨ v7 ∨ v15 ∨ v1 ∨ v14 ∨ v11 ∨ v18 ∨ v9 ∨ v10 ∨ v44 ∨ v49)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c249 : v22 ∨ v21 ∨ v27 ∨ v34 ∨ v26 ∨ v6 ∨ v7 ∨ v15 ∨ v14 ∨ v1 ∨ v19 ∨ v33 ∨ v35 ∨ ¬v28)
    (c282 : v29 ∨ v23 ∨ v35 ∨ v30 ∨ ¬v15 ∨ v26 ∨ v21 ∨ v22 ∨ v19 ∨ v8 ∨ v16 ∨ v12 ∨ v20 ∨ v14)
    (c288 : ¬v14 ∨ v6 ∨ v20 ∨ v21 ∨ v7 ∨ v13 ∨ v1 ∨ v8)
    (c302 : v43 ∨ ¬v37 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v17 ∨ v23 ∨ v31 ∨ v36 ∨ v15 ∨ v16 ∨ v38 ∨ v49)
    (c304 : v12 ∨ v26 ∨ v4 ∨ v24 ∨ v21 ∨ v18 ∨ v14 ∨ v10 ∨ v17 ∨ ¬v11 ∨ v7 ∨ v13 ∨ v25 ∨ v5)
    (c316 : v36 ∨ v37 ∨ v1 ∨ ¬v9 ∨ v16 ∨ v11 ∨ v2 ∨ v8 ∨ v10 ∨ v18 ∨ v17 ∨ v4 ∨ v38 ∨ v44)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c350 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v3 ∨ v44 ∨ v39)
    (c354 : v43 ∨ v44 ∨ v49 ∨ v14 ∨ v7 ∨ v2 ∨ v8 ∨ ¬v1)
    (c369 : v43 ∨ ¬v36 ∨ v44 ∨ v34 ∨ v35 ∨ v8 ∨ v1 ∨ v29 ∨ v41 ∨ v42 ∨ v9 ∨ v14 ∨ v37 ∨ v48)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c394 : v36 ∨ v23 ∨ v35 ∨ v37 ∨ v42 ∨ ¬v29 ∨ v22 ∨ v30)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c419 : ¬v45 ∨ v38 ∨ v46 ∨ v3 ∨ v4 ∨ v37 ∨ v44 ∨ v39)
    (c438 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v40 ∨ v42 ∨ v33 ∨ v35)
    (c441 : ¬v45 ∨ v23 ∨ v25 ∨ v31 ∨ v1 ∨ v2 ∨ v24 ∨ v3 ∨ v38 ∨ v36 ∨ v39 ∨ v43 ∨ v44 ∨ v46)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c464 : ¬v45 ∨ v38 ∨ v46 ∨ v3 ∨ v4 ∨ v2 ∨ v44 ∨ v39)
    (c466 : v36 ∨ ¬v33 ∨ v40 ∨ v22 ∨ v20 ∨ v25 ∨ v34 ∨ v29 ∨ v18 ∨ v19 ∨ v35 ∨ v26 ∨ v32 ∨ v41)
    (c474 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v8 ∨ v2 ∨ v9)
    (c493 : v11 ∨ v6 ∨ v46 ∨ v2 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v18 ∨ v16 ∨ v13 ∨ v9 ∨ v10 ∨ v47 ∨ v48)
    (c495 : v3 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v47 ∨ v46 ∨ v10 ∨ v11)
    (c499 : ¬v30 ∨ v37 ∨ v15 ∨ v24 ∨ v27 ∨ v34 ∨ v23 ∨ v17 ∨ v16 ∨ v36 ∨ v35 ∨ v29 ∨ v31 ∨ v41)
    (c510 : v43 ∨ v36 ∨ v44 ∨ v31 ∨ v32 ∨ v22 ∨ v23 ∨ v30 ∨ v35 ∨ v39 ∨ v25 ∨ ¬v29 ∨ v42 ∨ v49)
    (c527 : ¬v33 ∨ v40 ∨ v25 ∨ v37 ∨ v41 ∨ v26 ∨ v34 ∨ v32 ∨ v31 ∨ v30 ∨ v23 ∨ v46 ∨ v47 ∨ v48)
    (c531 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v44 ∨ v3 ∨ v4 ∨ v2)
    (c532 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v1 ∨ v10 ∨ v8 ∨ v9)
    (c537 : ¬v45 ∨ v38 ∨ v10 ∨ v37 ∨ v4 ∨ v3 ∨ v11 ∨ v7 ∨ v9 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c538 : ¬v33 ∨ v40 ∨ v34 ∨ v39 ∨ v25 ∨ v27 ∨ v26 ∨ v32)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c682 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c828 : v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c910 : ¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1006 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c1051 : v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1107 : v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1352 : v20 ∨ v6 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1424 : v49 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48)
    (c1427 : v19 ∨ ¬v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1446 : v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c1450 : v14 ∨ v7 ∨ v8 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1453 : v13 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1573 : v39 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v38)
    (c1590 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v39 ∨ v40)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1635 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1637 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1648 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1661 : v49 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1669 : ¬v12 ∨ ¬v15 ∨ v22 ∨ v23)
    (c1672 : v48 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v30 ∨ v35 ∨ v46 ∨ v47 ∨ v49)
    (c1673 : ¬v1 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v11 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v26) ∧ (v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v3 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (v22 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v37 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v44 ∨ v49) ∧ (v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44) ∧ (v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v40 ∨ v41) ∧ (¬v27 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v46 ∨ ¬v22 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v39 ∨ v47 ∨ v48) ∧ (¬v6 ∨ v4 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41) ∧ (v25 ∨ v4 ∨ v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v44) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24) ∧ (v46 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v35 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v4 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v2 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v34 ∨ v35 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v35 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v41 ∨ v43 ∨ v48 ∨ v49) := by
  have c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
  have c1675 : v2 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v16 ∨ v23 ∨ v30 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n9
    have u4 : v7 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u5 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
    have u6 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u5 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u7
  have c1676 : ¬v11 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n2
  have c1677 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
  have c1678 : v46 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v19 := by
      rcases c1673 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n11
    have u14 : v2 := by
      rcases c1675 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n11
    have u15 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v11 := by
      rcases c1676 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v39 := by
      rcases c1677 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
    have u20 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u19 a
    rcases c537 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n11
  have c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact a
    have u2 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n1 a
  have c1680 : ¬v3 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1681 : v46 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v33 := by
      rcases c1678 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
    have u12 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
    have u14 : v40 := by
      rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v4 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u16
    have u18 : v2 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u16
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1682 : v22 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c1669 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
    have u7 : v14 := by
      rcases c282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact a
    have u8 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n4
  have c1683 : v5 ∨ v3 ∨ ¬v4 ∨ ¬v8 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n3 a
      · exact a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
  have c1684 : ¬v12 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 := by
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
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    rcases c532 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c1685 : v48 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v12 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
    have u10 : ¬v7 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v8 := by
      rcases c1683 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v29 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v19 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u17 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u17
    · exact absurd a u18
  have c1686 : ¬v37 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n10
  have c1687 : v30 ∨ v1 ∨ v2 ∨ v8 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v29 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u6 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n0
    have u7 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1686 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1688 : v38 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ v36 ∨ v39 ∨ v43 ∨ v44 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v31 := by
      rcases c1573 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
    rcases c441 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n11 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
  have c1689 : ¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n7 a
      · exact a
    rcases c1688 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd n7 a
    · exact absurd a n8
  have c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n6
  have c1691 : v46 ∨ v3 ∨ ¬v4 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v2 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v37 := by
      rcases c1689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n0
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n12
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
    have u14 : v29 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n10
    have u22 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u23 : v38 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u21
    have u24 : v36 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd u14 a
      · exact absurd a u22
      · exact absurd a n12
    rcases c147 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c1692 : v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v20 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
    have u6 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u5 a
    rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
  have c1693 : v46 ∨ ¬v4 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
    have u3 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v19 := by
      rcases c1687 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
    have u8 : v3 := by
      rcases c1691 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
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
    have u9 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u12 : v29 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u10
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v18 := by
      rcases c1692 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u14 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    rcases c673 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1694 : v35 ∨ ¬v4 ∨ v26 ∨ ¬v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c1661 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u5 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u6 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u9 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v8 := by
      rcases c1693 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u14 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
    have u16 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v2 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u19 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u8
    have u20 : v3 := by
      rcases c1689 with a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u9
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n4
    have u21 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : v33 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n2
      · exact a
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
    have u27 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u25 a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u22
    · exact absurd a n2
  have c1695 : ¬v8 ∨ v2 ∨ v4 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u5 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u6 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
    have u7 : v37 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u8 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v32 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n8
    rcases c910 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
  have c1696 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v31 := by
      rcases c1573 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u4
    have u7 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
    have u8 : ¬v29 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n9
    rcases c1648 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c1697 : v39 ∨ v4 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v32 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v40 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact a
    rcases c1272 with a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1698 : v35 ∨ v2 ∨ v26 ∨ ¬v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c1661 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c1694 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u6 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u7 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u11 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
    have u13 : ¬v8 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u14 : ¬v19 := by
      rcases c1687 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
    have u15 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
    have u16 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v18 := by
      rcases c1006 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
    have u19 : v39 := by
      rcases c1697 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u4
    have u21 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v16 := by
      rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u15 a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u9
    have u25 : ¬v29 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u22
      · exact a
      · exact absurd a u5
      · exact absurd a u10
    have u26 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a u13
      · exact a
    rcases c60 with a|a
    · exact absurd u24 a
    · exact absurd u26 a
  have c1699 : v32 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ ¬v33 ∨ v35 ∨ v36 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n8 a
    rcases c466 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n8 a
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n12
  have c1700 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1699 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    · exact absurd a n11
  have c1701 : v40 ∨ ¬v2 ∨ v4 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v33 := by
      rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u5 : ¬v12 := by
      rcases c1669 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u6 a
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c21 with a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c1702 : v4 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ ¬v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v30 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u11 : ¬v29 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a u10
    have u12 : ¬v15 := by
      rcases c1701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n12
    have u14 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v6 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v7 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n12
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u15
    rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a n12
  have c1703 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c1697 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1704 : v4 ∨ ¬v2 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v39 := by
      rcases c1702 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
    have u4 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v11 := by
      rcases c1697 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v3 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u8
    have u13 : ¬v6 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u16 : v33 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n12
  have c1705 : ¬v27 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c1694 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v2 := by
      rcases c1698 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v28 := by
      rcases c1661 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u9 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u10 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u11 : ¬v39 := by
      rcases c1702 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v19 := by
      rcases c1704 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u5 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a n1
    have u18 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a n1
    have u19 : ¬v1 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v3 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u17
    have u21 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u5 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u20 a
      · exact absurd u5 a
      · exact a
    have u23 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u5 a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v11 := by
      rcases c1676 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
    have u25 : v32 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u15
      · exact a
      · exact absurd a u11
    have u26 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u25 a
      · exact a
    rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n6
  have c1706 : v46 ∨ ¬v22 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v39 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v24 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u6
    have u8 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u9 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u10 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u10 a
      · exact a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd u7 a
    · exact absurd a n2
  have c1707 : v27 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v35 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v22 := by
      rcases c117 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v49 := by
      rcases c181 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v32 := by
      rcases c1706 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n10
    have u7 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n10
    have u8 : ¬v1 := by
      rcases c1673 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v37 := by
      rcases c1689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n9 a
      · exact absurd a n10
    have u19 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : v38 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n8
    have u21 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : v30 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u15
      · exact a
    have u27 : ¬v34 := by
      rcases c438 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u26 a
    rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a n7
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u24
  have c1708 : v26 ∨ v4 ∨ v24 ∨ v25 ∨ ¬v33 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v40 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
    have u7 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v3 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
    have u13 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v6 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n9
    have u16 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u15 a
    have u17 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u15 a
    rcases c559 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd u15 a
    · exact absurd a u14
  have c1709 : v4 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u5 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v33 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v32 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
    have u9 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u16 a
      · exact a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u17 a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u21 : v38 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n5
    have u22 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v34 := by
      rcases c438 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a n4
    have u25 : v28 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v23 := by
      rcases c1707 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u26 a
    have u28 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u27
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a n4
    have u29 : v17 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a u10
    have u30 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u29 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u27
    · exact absurd a u1
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u31
    · exact absurd a u30
  have c1710 : v38 ∨ v4 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u5
  have c1711 : ¬v6 ∨ v4 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v3 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u3
    have u6 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    rcases c929 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1712 : v27 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v12 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v20 := by
      rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a n13
    · exact absurd a n7
  have c1713 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c446 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
  have c1714 : v25 ∨ v4 ∨ v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v39 := by
      rcases c1709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v33 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v34 := by
      rcases c438 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
    have u10 : v19 := by
      rcases c1712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v6 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a u9
  have c1715 : v6 ∨ ¬v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
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
    have u4 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n7
    have u5 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1716 : ¬v4 ∨ v6 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u1
      · exact a
      · exact absurd a n17
      · exact absurd a n11
    have u3 : v28 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n17
    have u4 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v22 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v14 := by
      rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u5 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n15
      · exact a
      · exact absurd a n10
    have u12 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u13 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n0 a
    rcases c532 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd u11 a
    · exact absurd a u13
    · exact absurd a n15
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
  have c1717 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c532 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
  have c1718 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n0 a
      · exact a
    rcases c414 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c1719 : v24 ∨ ¬v4 ∨ v6 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u3 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v12 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n17
    have u6 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v13 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
    have u13 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u14 : ¬v2 := by
      rcases c1717 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u16 : v28 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u17 : v22 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u16 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u17 a
      · exact absurd u16 a
      · exact a
    have u19 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u3
      · exact a
      · exact absurd a u10
      · exact absurd a n15
      · exact absurd a u14
      · exact absurd a n8
    rcases c1718 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a n0
  have c1720 : v46 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v4 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v40 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a u10
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v6 := by
      rcases c1719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u7 a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u18 a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u16
  have c1721 : ¬v6 ∨ ¬v4 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a u3
    rcases c669 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1722 : v2 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v34 ∨ v35 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c1720 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v4 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v1 := by
      rcases c1673 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v6 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v20 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v12 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v13 := by
      rcases c1453 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
    have u19 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v28 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u24 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u2 a
    have u25 : v22 := by
      rcases c249 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd u22 a
    have u26 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u25 a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v37 := by
      rcases c1689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n8
    have u28 : v30 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n0
      · exact a
    have u29 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v36 := by
      rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u30
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a n10
    rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u31
    · exact absurd a n6
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a n7
  have c1723 : v35 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c438 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n0
  exact ⟨c1674, c1676, c1679, c1680, c1682, c1686, c1690, c1692, c1696, c1700, c1705, c1706, c1711, c1712, c1713, c1714, c1715, c1717, c1718, c1720, c1721, c1722, c1723⟩
