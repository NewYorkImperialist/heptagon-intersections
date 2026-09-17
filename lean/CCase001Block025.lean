import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1250-1299 of the 2915-step refutation of ccase001: 140 core clauses and 78 earlier-derived ones give 13 more. -/
theorem CCase001_block025
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
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
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c180 : ¬v45 ∨ ¬v47)
    (c181 : ¬v48 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c225 : v7 ∨ ¬v20 ∨ v27 ∨ v5 ∨ v24 ∨ v14 ∨ v18 ∨ v17 ∨ v10 ∨ v21 ∨ v19 ∨ v13 ∨ v26 ∨ v6)
    (c247 : v29 ∨ ¬v22 ∨ v30 ∨ v23 ∨ v35 ∨ v15 ∨ v21 ∨ v28)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c339 : ¬v27 ∨ v41 ∨ v19 ∨ v35 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v18 ∨ v32 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c340 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v31 ∨ v40 ∨ v25 ∨ v24)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c367 : ¬v45 ∨ v3 ∨ v39 ∨ v37 ∨ v2 ∨ v38 ∨ v44 ∨ v46)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c395 : v36 ∨ ¬v30 ∨ v3 ∨ v31 ∨ v37 ∨ v1 ∨ v2 ∨ v23 ∨ v24 ∨ v32 ∨ v29 ∨ v25 ∨ v39 ∨ v44)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c434 : v36 ∨ ¬v30 ∨ v24 ∨ v31 ∨ v38 ∨ v23 ∨ v37 ∨ v29)
    (c451 : ¬v45 ∨ v4 ∨ v37 ∨ v46 ∨ v3 ∨ v39 ∨ v44 ∨ v38)
    (c462 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c473 : ¬v45 ∨ v36 ∨ v44 ∨ v1 ∨ v2 ∨ v23 ∨ v3 ∨ v38 ∨ v24 ∨ v39 ∨ v25 ∨ v43 ∨ v31 ∨ v46)
    (c476 : v43 ∨ v7 ∨ v26 ∨ v19 ∨ v14 ∨ v28 ∨ v27 ∨ v12 ∨ v20 ∨ v8 ∨ ¬v21 ∨ v15 ∨ v48 ∨ v49)
    (c478 : ¬v33 ∨ v40 ∨ v32 ∨ v41 ∨ v26 ∨ v25 ∨ v27 ∨ v34)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c495 : v29 ∨ ¬v22 ∨ v30 ∨ v35 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c498 : ¬v25 ∨ v18 ∨ v19 ∨ v26 ∨ v17 ∨ v24 ∨ v32 ∨ v31)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c548 : ¬v21 ∨ v28 ∨ v19 ∨ v8 ∨ v25 ∨ v11 ∨ v18 ∨ v15 ∨ v6 ∨ v20 ∨ v1 ∨ v27 ∨ v7 ∨ v14)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c580 : ¬v45 ∨ v38 ∨ v44 ∨ v37 ∨ v4 ∨ v2 ∨ v3 ∨ v46)
    (c581 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v8 ∨ v3 ∨ ¬v2 ∨ v10)
    (c588 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v32 ∨ v25 ∨ v27)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1030 : ¬v33 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1171 : ¬v10 ∨ ¬v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1211 : v14 ∨ v8 ∨ v9 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v35 ∨ v36 ∨ v41 ∨ v42)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1438 : v13 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1535 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1628 : v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1658 : ¬v5 ∨ ¬v1 ∨ ¬v13 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1700 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1726 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46)
    (c1739 : ¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v39 ∨ v46)
    (c1741 : ¬v35 ∨ ¬v39 ∨ v46 ∨ v47)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1759 : v46 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v47 ∨ v48 ∨ v49)
    (c1786 : v49 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v46 ∨ v47 ∨ v48)
    (c1790 : v1 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1796 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1801 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31)
    (c1810 : ¬v6 ∨ ¬v1 ∨ v38 ∨ ¬v45 ∨ v46)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1815 : v6 ∨ ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1827 : v19 ∨ v5 ∨ v12 ∨ v26 ∨ ¬v38 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1828 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1831 : ¬v39 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v45 ∨ v46 ∨ v49)
    (c1839 : v38 ∨ ¬v1 ∨ ¬v7 ∨ ¬v45 ∨ v46)
    (c1858 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1864 : v49 ∨ v7 ∨ v8 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1867 : ¬v14 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1870 : v8 ∨ ¬v7 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1871 : v20 ∨ v15 ∨ v21 ∨ v22 ∨ ¬v27 ∨ ¬v35 ∨ v47 ∨ v48 ∨ v49)
    (c1872 : v20 ∨ ¬v27 ∨ ¬v32)
    (c1873 : v49 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v32 ∨ ¬v45 ∨ v46)
    : (¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27) ∧ (¬v6 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49) ∧ (v22 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v45 ∨ v46) ∧ (v3 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v39 ∨ ¬v45 ∨ v46) ∧ (v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16) ∧ (¬v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49) ∧ (v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v34 ∨ v40) ∧ (¬v13 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v39 ∨ ¬v4 ∨ v13 ∨ ¬v22 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1874 : v47 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v22 ∨ v28 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v7 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v27 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u9 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v32 := by
      rcases c1872 with a|a|a
      · exact absurd a u4
      · exact absurd u8 a
      · exact a
    have u16 : v6 := by
      rcases c1873 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd u9 a
      · exact absurd a n6
    have u17 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u16 a
    have u19 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd u6 a
    have u20 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u19 a
      · exact absurd u14 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd u19 a
    · exact absurd a n2
  have c1875 : ¬v14 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u3
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd n1 a
  have c1876 : v49 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v27 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v35 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v14 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n0
    have u8 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u9 : ¬v19 := by
      rcases c1874 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u10 : v34 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
    have u11 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v6 := by
      rcases c1875 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u14 : v13 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
    have u15 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u16 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u14 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u12
  have c1877 : v6 ∨ ¬v1 ∨ ¬v2 ∨ ¬v14 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v12 := by
      rcases c1867 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1878 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1879 : v7 ∨ ¬v1 ∨ v6 ∨ v8 ∨ ¬v14 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v2 := by
      rcases c1877 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    rcases c1457 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1880 : v46 ∨ v6 ∨ v8 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v7 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v27 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v14 := by
      rcases c1879 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v2 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u12
    have u14 : v13 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u3 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v9 := by
      rcases c1811 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a n4
    have u19 : v12 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a n4
    have u20 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u19 a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u19 a
      · exact absurd u14 a
      · exact a
    have u22 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n10
    have u23 : ¬v34 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a n0
    have u24 : v32 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n0
    have u25 : v35 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u23
      · exact a
    rcases c141 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1881 : v8 ∨ v15 ∨ v20 ∨ v22 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v27 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v21 := by
      rcases c1876 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v6 := by
      rcases c1880 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u13 a
    have u16 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
    have u17 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u1
      · exact a
    have u18 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd u10 a
    rcases c62 with a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u16 a
  have c1882 : v7 ∨ ¬v1 ∨ ¬v6 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    have u4 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u5 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd u3 a
    · exact absurd a n4
  have c1883 : v21 ∨ ¬v1 ∨ v2 ∨ v6 ∨ v7 ∨ v8 ∨ v15 ∨ v19 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n4
      · exact a
    have u5 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u10 : v33 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v20 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u11 a
    have u20 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u11 a
    have u21 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u11 a
    have u22 : ¬v22 := by
      rcases c1300 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
    have u23 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u24 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
    have u25 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u26 : ¬v23 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u19
    have u27 : ¬v25 := by
      rcases c498 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u13
    have u28 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a n6
    have u29 : ¬v37 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
    have u30 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u28 a
      · exact a
    have u31 : v40 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u29
      · exact a
      · exact absurd a u23
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u32 : v39 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u30
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u16
      · exact a
      · exact absurd a n10
    rcases c161 with a|a
    · exact absurd u32 a
    · exact absurd u31 a
  have c1884 : v47 ∨ v8 ∨ v15 ∨ v22 ∨ v28 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v27 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v20 := by
      rcases c1881 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u13 : ¬v6 := by
      rcases c1882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u12 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u14 : v2 := by
      rcases c1883 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u12 a
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact a
    have u18 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v14 := by
      rcases c1867 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a u10
    have u20 : v35 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u24 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u26 : v42 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u25
      · exact absurd a u24
      · exact a
    have u27 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u26 a
      · exact a
    rcases c451 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a u27
  have c1885 : v28 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v27 := by
      rcases c1864 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v15 := by
      rcases c1884 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v14 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
    have u12 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v9 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
    have u14 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u11 a
    rcases c1457 with a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u14 a
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1886 : ¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v14 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd n1 a
  have c1887 : v13 ∨ v8 ∨ ¬v14 ∨ v19 ∨ v22 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
    have u15 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u7
    have u16 : ¬v6 := by
      rcases c1886 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v2 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n3
    have u18 : v7 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd u2 a
    have u19 : v5 := by
      rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    rcases c14 with a|a|a
    · exact absurd u2 a
    · exact absurd u19 a
    · exact absurd u18 a
  have c1888 : v49 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v19 ∨ v22 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v33 := by
      rcases c1887 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u10
    have u14 : v40 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v6 := by
      rcases c1810 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n6
    have u17 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a u9
    have u18 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u17 a
      · exact a
    rcases c1451 with a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n0
  have c1889 : v19 ∨ v8 ∨ ¬v14 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v13 := by
      rcases c1888 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u13 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u17 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
    have u19 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
    have u20 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u29 : v40 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u23
    have u30 : ¬v37 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u31 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u7
    have u33 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u31
      · exact absurd a n4
    rcases c2 with a|a|a
    · exact absurd u1 a
    · exact absurd u33 a
    · exact absurd u32 a
  have c1890 : v47 ∨ v8 ∨ v22 ∨ ¬v33 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u2
    have u9 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v14 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v40 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
    have u17 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v7 := by
      rcases c1839 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd u14 a
      · exact a
      · exact absurd u6 a
      · exact absurd a n4
    have u21 : v2 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u14 a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u15
    have u22 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u21 a
    rcases c451 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u18
  have c1891 : ¬v2 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v40 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v48 := by
      rcases c181 with a|a
      · exact a
      · exact absurd n11 a
    have u5 : ¬v47 := by
      rcases c180 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v39 := by
      rcases c1831 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v34 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n12
    have u9 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u7
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v26 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
    have u13 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u12 a
      · exact a
    rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n12
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u4
  have c1892 : v22 ∨ v8 ∨ ¬v13 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v33 := by
      rcases c1890 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v12 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    have u16 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    have u17 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u8
    have u19 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
    have u20 : ¬v2 := by
      rcases c1891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n7
    have u21 : v7 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a u1
    have u22 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u21 a
      · exact absurd u4 a
      · exact absurd a n4
    have u23 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a n4
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u8
  have c1893 : v19 ∨ ¬v7 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v28 := by
      rcases c1870 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v13 := by
      rcases c1892 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v1 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a n4
    have u9 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u14 : v20 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
  have c1894 : v18 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n9 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n9 a
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a n2
  have c1895 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1894 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1896 : v19 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v1 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v14 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v7 := by
      rcases c1893 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v2 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u10 a
      · exact absurd u13 a
      · exact a
    have u18 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v13 := by
      rcases c1892 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v11 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd u10 a
      · exact absurd a u14
      · exact a
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a n0
    have u21 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u18 a
    have u22 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    have u23 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v20 := by
      rcases c1895 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
    have u25 : v34 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u10 a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u29 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u30 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u31 : v41 := by
      rcases c897 with a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u7
      · exact absurd a u29
      · exact a
      · exact absurd a u30
    have u32 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u31 a
      · exact a
    rcases c451 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a u32
    · exact absurd a u8
    · exact absurd a u33
  have c1897 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
    have u5 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u1
      · exact a
    have u6 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n3
    rcases c57 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1898 : v22 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v19 := by
      rcases c1896 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v28 := by
      rcases c1885 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v35 := by
      rcases c1421 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u11 a
    have u16 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u22 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    have u24 : ¬v6 := by
      rcases c1897 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    have u25 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a u16
    have u26 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u25 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v4 := by
      rcases c1815 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u23 a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    have u28 : v11 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n2
    have u29 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u28 a
    have u30 : ¬v10 := by
      rcases c1171 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
    have u31 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u28 a
    have u32 : v7 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd u25 a
      · exact absurd a u31
      · exact absurd a u9
    have u33 : v3 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u10
      · exact a
      · exact absurd a u26
      · exact absurd u28 a
      · exact absurd a u27
      · exact absurd a u6
    rcases c9 with a|a|a
    · exact absurd u23 a
    · exact absurd u33 a
    · exact absurd u32 a
  have c1899 : ¬v14 ∨ ¬v13 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n2 a
      · exact a
    rcases c577 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u1
  have c1900 : ¬v1 ∨ v8 ∨ v14 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v30 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v29 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v7 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u14 a
    have u18 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u14 a
      · exact absurd u3 a
      · exact absurd a n9
    have u19 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd u3 a
      · exact absurd a n9
    have u21 : v13 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u5
    have u24 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u23 a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u21 a
    rcases c1254 with a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a n9
  have c1901 : ¬v19 ∨ v8 ∨ ¬v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v29 := by
      rcases c1375 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
    have u13 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v14 := by
      rcases c1899 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u18 : v7 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v1 := by
      rcases c1900 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u19
      · exact a
      · exact absurd u18 a
      · exact absurd a u17
    have u21 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u18 a
    have u22 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u18 a
    have u23 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    have u24 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd u6 a
      · exact absurd a n3
    have u25 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u9
    have u26 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u25 a
      · exact absurd n2 a
      · exact a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u25 a
    · exact absurd a u1
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u26
  have c1902 : v4 ∨ v1 ∨ ¬v7 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
    have u10 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
    have u12 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u9 a
    have u13 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
    have u14 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
    have u15 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v12 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
    have u20 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u18 a
      · exact absurd n4 a
      · exact a
    have u21 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u18 a
      · exact absurd n4 a
      · exact a
    have u22 : v32 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a u17
      · exact absurd a n6
    have u23 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u22 a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u6
  have c1903 : v39 ∨ v4 ∨ v11 ∨ v15 ∨ v16 ∨ v18 ∨ ¬v22 ∨ v35 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
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
    have u5 : v29 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
    rcases c126 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1904 : v9 ∨ v4 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v19 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v21 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v12 := by
      rcases c476 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u11 a
      · exact absurd n4 a
      · exact a
    have u13 : v39 := by
      rcases c1903 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
    have u14 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1211 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u5
  have c1905 : v14 ∨ v4 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v19 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
    have u6 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v12 := by
      rcases c476 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u8 a
    rcases c1904 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1906 : v14 ∨ v1 ∨ v4 ∨ v8 ∨ ¬v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v7 := by
      rcases c1902 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v35 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd u2 a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u2 a
    have u23 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u24 : v11 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n5
    have u25 : v42 := by
      rcases c1700 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u21
      · exact a
    have u26 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u24 a
    have u27 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd n4 a
    have u28 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u24 a
    have u29 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u26
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u31 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u32 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u6
      · exact absurd a u9
    have u33 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u31
      · exact a
      · exact absurd a u1
      · exact absurd u24 a
      · exact absurd a n2
      · exact absurd a u22
    have u34 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u14
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u32
      · exact absurd a u6
    rcases c17 with a|a|a
    · exact absurd u30 a
    · exact absurd u34 a
    · exact absurd u33 a
  have c1907 : v1 ∨ ¬v4 ∨ v8 ∨ ¬v13 ∨ ¬v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n8
    have u20 : v42 := by
      rcases c1700 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u10
      · exact a
    have u21 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v5 := by
      rcases c1726 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd a n5
    have u25 : v12 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u25 a
      · exact absurd n3 a
      · exact a
    have u28 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u16
    have u29 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a u14
    have u30 : v3 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd u29 a
      · exact absurd a u27
    rcases c16 with a|a|a
    · exact absurd n1 a
    · exact absurd u30 a
    · exact absurd u29 a
  have c1908 : v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v37 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : v38 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n12
    have u3 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u3 a
    rcases c395 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a u1
  have c1909 : ¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n8
  have c1910 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v2 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    have u4 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v37 := by
      rcases c1909 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n11 a
      · exact absurd a n12
    have u6 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
    have u8 : v32 := by
      rcases c1908 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
    rcases c131 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v15 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    rcases c1689 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n0
  have c1912 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
  have c1913 : v14 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v4 := by
      rcases c1906 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v7 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v35 := by
      rcases c1907 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v21 := by
      rcases c1858 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v12 := by
      rcases c476 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact a
    have u23 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact a
    have u24 : v6 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n0
    have u25 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u24 a
    have u27 : v39 := by
      rcases c1910 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
    have u28 : ¬v37 := by
      rcases c1909 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n4
    have u29 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u25
      · exact a
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u6
    have u32 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact a
    have u33 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u31 a
    rcases c434 with a|a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd u31 a
    · exact absurd a u9
    · exact absurd a u32
    · exact absurd a u29
    · exact absurd a u6
    · exact absurd a u28
    · exact absurd a u33
  have c1914 : v14 ∨ v8 ∨ ¬v13 ∨ ¬v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v35 := by
      rcases c1741 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v1 := by
      rcases c1913 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v7 := by
      rcases c1839 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd u4 a
      · exact a
      · exact absurd u6 a
      · exact absurd a n4
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u2
    have u12 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v2 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
    have u14 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u4 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u13 a
    have u18 : v12 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u16
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u14
    have u19 : ¬v9 := by
      rcases c1811 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u7
      · exact a
      · exact absurd a u14
    have u20 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    have u21 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    rcases c1831 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd u6 a
    · exact absurd a n4
    · exact absurd a n7
  have c1915 : ¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd n1 a
    have u4 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u2
      · exact a
    rcases c63 with a|a|a
    · exact absurd u3 a
    · exact absurd n3 a
    · exact absurd u4 a
  have c1916 : ¬v13 ∨ v7 ∨ v8 ∨ v14 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v1 := by
      rcases c1913 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v39 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v2 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
    have u13 : ¬v4 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u14 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u12 a
    have u16 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u16 a
      · exact absurd n0 a
      · exact a
    have u18 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u16 a
      · exact absurd n0 a
      · exact a
    have u19 : v32 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a n4
    have u20 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v40 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u20
      · exact a
      · exact absurd a u7
      · exact absurd a u8
    rcases c1245 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1917 : v14 ∨ v8 ∨ ¬v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v1 := by
      rcases c1913 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v4 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u11 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v39 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v7 := by
      rcases c1916 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v38 := by
      rcases c1839 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact absurd u3 a
      · exact absurd a n3
    have u15 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v12 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u18
    have u21 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact a
    have u22 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact a
    have u23 : v32 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u21
      · exact a
      · exact absurd a u12
      · exact absurd a n3
    have u24 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u23 a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u6
  have c1918 : ¬v1 ∨ v8 ∨ ¬v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v14 := by
      rcases c1917 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
    have u6 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v4 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u15 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v39 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u17
      · exact a
      · exact absurd a n3
    have u20 : v40 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u16
    rcases c161 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1919 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v40 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n4
    rcases c1245 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1920 : v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v34 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
  have c1921 : ¬v39 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u7 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v33 := by
      rcases c1920 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u7
      · exact absurd a u5
    have u9 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v32 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a u8
    have u11 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n8
    rcases c131 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c1922 : ¬v13 ∨ v8 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v22 := by
      rcases c1898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v1 := by
      rcases c1918 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v19 := by
      rcases c1901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v14 := by
      rcases c1917 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n0 a
    have u14 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u12 a
    have u16 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
    have u18 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u9
    have u20 : ¬v39 := by
      rcases c1921 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v4 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : v3 := by
      rcases c1910 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a n2
    have u23 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
    have u25 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u26
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u6
    have u29 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u30 : v40 := by
      rcases c1920 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u25 a
      · exact absurd a u27
      · exact a
    rcases c154 with a|a
    · exact absurd u30 a
    · exact absurd u28 a
  have c1923 : v39 ∨ ¬v4 ∨ v13 ∨ ¬v22 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u1
    have u10 : v40 := by
      rcases c588 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n5
  exact ⟨c1878, c1895, c1897, c1898, c1909, c1910, c1911, c1912, c1915, c1919, c1920, c1922, c1923⟩
