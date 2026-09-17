import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1150-1199 of the 2915-step refutation of ccase001: 133 core clauses and 67 earlier-derived ones give 17 more. -/
theorem CCase001_block023
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c86 : ¬v16 ∨ ¬v17)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c98 : ¬v19 ∨ ¬v20)
    (c101 : v15 ∨ v20 ∨ v16 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c105 : ¬v22 ∨ ¬v26)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c121 : ¬v28 ∨ ¬v26)
    (c123 : v22 ∨ v27 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v26)
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
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
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
    (c169 : ¬v45 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c231 : ¬v18 ∨ v25 ∨ v5 ∨ v20 ∨ v26 ∨ v10 ∨ v4 ∨ v19 ∨ v14 ∨ v11 ∨ v21 ∨ v3 ∨ v17 ∨ v28)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c327 : v22 ∨ ¬v15 ∨ v21 ∨ v28 ∨ v9 ∨ v16 ∨ v23 ∨ v8)
    (c328 : ¬v35 ∨ v29 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v34)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c345 : ¬v15 ∨ v21 ∨ v19 ∨ v9 ∨ v1 ∨ v7 ∨ v28 ∨ v2 ∨ v20 ∨ v16 ∨ v26 ∨ v22 ∨ v8 ∨ v12)
    (c367 : ¬v45 ∨ v3 ∨ v39 ∨ v37 ∨ v2 ∨ v38 ∨ v44 ∨ v46)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c391 : ¬v32 ∨ v18 ∨ v10 ∨ v33 ∨ v40 ∨ v25 ∨ v31 ∨ v39 ∨ v24 ∨ v11 ∨ v27 ∨ v34 ∨ v12 ∨ v41)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c439 : v14 ∨ v11 ∨ v27 ∨ v18 ∨ v33 ∨ v4 ∨ v12 ∨ v21 ∨ v5 ∨ v20 ∨ ¬v13 ∨ v6 ∨ v34 ∨ v35)
    (c442 : v20 ∨ v47 ∨ v5 ∨ v16 ∨ v9 ∨ v6 ∨ v21 ∨ v2 ∨ v12 ∨ v14 ∨ ¬v13 ∨ v8 ∨ v48 ∨ v49)
    (c451 : ¬v45 ∨ v4 ∨ v37 ∨ v46 ∨ v3 ∨ v39 ∨ v44 ∨ v38)
    (c464 : v36 ∨ ¬v30 ∨ v24 ∨ v23 ∨ v31 ∨ v37 ∨ v22 ∨ v29)
    (c480 : ¬v45 ∨ v38 ∨ v37 ∨ v3 ∨ v4 ∨ v32 ∨ v6 ∨ v41 ∨ v31 ∨ v30 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c500 : ¬v45 ∨ v3 ∨ v39 ∨ v44 ∨ v2 ∨ v38 ∨ v4 ∨ v46)
    (c511 : v36 ∨ v35 ∨ v37 ∨ v1 ∨ v41 ∨ v34 ∨ v28 ∨ v27 ∨ v30 ∨ ¬v29 ∨ v7 ∨ v22 ∨ v2 ∨ v43)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c560 : ¬v45 ∨ v5 ∨ v37 ∨ v24 ∨ v3 ∨ v4 ∨ v38 ∨ v31 ∨ v23 ∨ v25 ∨ v40 ∨ v44 ∨ v46 ∨ v47)
    (c573 : ¬v15 ∨ v21 ∨ v44 ∨ v1 ∨ v8 ∨ v9 ∨ v13 ∨ v22 ∨ v16 ∨ v27 ∨ v20 ∨ v43 ∨ v28 ∨ v49)
    (c580 : ¬v45 ∨ v38 ∨ v44 ∨ v37 ∨ v4 ∨ v2 ∨ v3 ∨ v46)
    (c581 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v8 ∨ v3 ∨ ¬v2 ∨ v10)
    (c587 : v43 ∨ ¬v45 ∨ v37 ∨ v9 ∨ v4 ∨ v3 ∨ v10 ∨ v38 ∨ v7 ∨ v42 ∨ v11 ∨ v44 ∨ v46 ∨ v49)
    (c597 : v22 ∨ ¬v15 ∨ v23 ∨ v21 ∨ v16 ∨ v14 ∨ v28 ∨ v8)
    (c607 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v32 ∨ v24 ∨ v23 ∨ v30)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c821 : ¬v9 ∨ v7 ∨ ¬v13 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c957 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v31 ∨ v32)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1316 : v43 ∨ ¬v2 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1347 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1408 : v7 ∨ v1 ∨ ¬v11 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1438 : v13 ∨ ¬v1 ∨ v5 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1481 : ¬v29 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1628 : v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1658 : ¬v5 ∨ ¬v1 ∨ ¬v13 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1675 : v11 ∨ ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c1700 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1703 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v22 ∨ v1 ∨ v8 ∨ ¬v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1715 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1716 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48)
    (c1726 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1749 : ¬v15 ∨ v8 ∨ ¬v12 ∨ ¬v13 ∨ v22)
    (c1759 : v46 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v47 ∨ v48 ∨ v49)
    (c1760 : ¬v33 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1762 : ¬v9 ∨ v1 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1763 : ¬v9 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1768 : v20 ∨ v1 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ ¬v23 ∨ v41 ∨ v42 ∨ v49)
    (c1770 : v22 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v13 ∨ v19 ∨ v24 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1771 : ¬v20 ∨ v1 ∨ v8 ∨ v22 ∨ ¬v23 ∨ v43 ∨ v44 ∨ v49)
    (c1772 : v37 ∨ v2 ∨ v3 ∨ v4 ∨ v22 ∨ v28 ∨ ¬v29 ∨ ¬v45 ∨ v46 ∨ v49)
    (c1773 : ¬v37 ∨ v1 ∨ v2 ∨ v3 ∨ v30 ∨ v31 ∨ v33 ∨ v40 ∨ v43 ∨ v44 ∨ v47)
    : (v8 ∨ v1 ∨ ¬v13 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v46 ∨ v47 ∨ v48) ∧ (v49 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v46 ∨ v47 ∨ v48) ∧ (v26 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33) ∧ (v1 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v34 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46) ∧ (v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31) ∧ (v34 ∨ ¬v1 ∨ ¬v5 ∨ v20 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v1 ∨ v38 ∨ ¬v45 ∨ v46) ∧ (¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20) ∧ (v15 ∨ v8 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49) ∧ (v26 ∨ ¬v1 ∨ v6 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v14 ∨ v2 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v2 ∨ v4 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v37 ∨ v39 ∨ v44 ∨ v46) ∧ (v2 ∨ v3 ∨ v4 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ ¬v45 ∨ v46 ∨ v49) ∧ (¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46) := by
  have c1774 : v1 ∨ v8 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v6 := by
      rcases c1481 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v7 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd n7 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n11
    have u18 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u13 a
    have u19 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u17 a
    have u20 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u17 a
    have u21 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    rcases c1772 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd u7 a
    · exact absurd u4 a
    · exact absurd a n8
    · exact absurd a n11
  have c1775 : ¬v15 ∨ v1 ∨ v8 ∨ v9 ∨ v13 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n12
  have c1776 : v22 ∨ v1 ∨ v8 ∨ v13 ∨ v19 ∨ v24 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1628 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v23 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
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
    have u6 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v9 := by
      rcases c1770 with a|a|a|a|a|a|a|a|a|a|a
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
    have u9 : ¬v20 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u10 : v15 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1775 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n9
  have c1777 : v33 ∨ v1 ∨ v8 ∨ v9 ∨ ¬v13 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v14 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n9
    have u2 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v12 := by
      rcases c1749 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n9
    have u4 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v7 := by
      rcases c345 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u3
    have u8 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u7 a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a u3
  have c1778 : v8 ∨ v1 ∨ ¬v13 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v12 := by
      rcases c1749 with a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v33 := by
      rcases c1760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
    have u7 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v9 := by
      rcases c1777 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c1689 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd u8 a
    · exact absurd a u10
  have c1779 : v40 ∨ v1 ∨ ¬v5 ∨ ¬v7 ∨ v22 ∨ v26 ∨ v28 ∨ ¬v29 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v3 := by
      rcases c30 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    rcases c1772 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n11
  have c1780 : v46 ∨ v1 ∨ v12 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n10 a
    have u6 : ¬v27 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u2
    have u7 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v7 := by
      rcases c1779 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u10 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
    have u15 : ¬v11 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n13
    have u16 : ¬v3 := by
      rcases c1675 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v2 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    have u19 : v36 := by
      rcases c511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n10 a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u12
    have u20 : v4 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n13
    have u21 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1726 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd u7 a
    · exact absurd a n0
  have c1781 : v49 ∨ v1 ∨ v8 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v23 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u10 : ¬v15 := by
      rcases c1778 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u12 : v12 := by
      rcases c1780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u20 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n0
    have u21 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
    have u22 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u20
    have u23 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd u22 a
      · exact absurd a u18
    have u24 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u25 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    have u26 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u27 : v37 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n0
    have u28 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a u5
      · exact a
    rcases c153 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c1782 : v22 ∨ v1 ∨ v8 ∨ v19 ∨ v24 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v23 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
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
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v20 := by
      rcases c1781 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u10 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u8
  have c1783 : ¬v20 ∨ v1 ∨ v8 ∨ v22 ∨ ¬v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1079 with a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c1784 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v24 := by
      rcases c1782 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
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
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v23 := by
      rcases c108 with a|a
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
    have u11 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u12 : ¬v20 := by
      rcases c1783 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u13 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u19 : v12 := by
      rcases c1780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
    have u24 : v36 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a u21
    have u25 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u24 a
      · exact a
    have u30 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u31 : ¬v3 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u19 a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n7
    have u32 : v2 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u29
      · exact a
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a n5
    have u33 : v9 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u31
      · exact absurd u32 a
      · exact absurd a u30
    rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd u33 a
    · exact absurd u19 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n7
    · exact absurd a n8
  have c1785 : ¬v31 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1762 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1786 : v49 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v24 := by
      rcases c1782 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v15 := by
      rcases c1784 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v14 := by
      rcases c597 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n2
    have u13 : v9 := by
      rcases c327 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
    have u14 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v31 := by
      rcases c1785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : v30 := by
      rcases c1262 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u15
    have u17 : v32 := by
      rcases c957 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u15
      · exact a
    rcases c131 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1787 : v26 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c123 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n0
  have c1788 : v13 ∨ ¬v9 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v3 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v2 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n11
    have u6 : v4 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n9
    rcases c21 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u1 a
  have c1789 : ¬v26 ∨ v1 ∨ v8 ∨ ¬v9 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v19 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v13 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v7 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
    have u14 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd n3 a
      · exact absurd u12 a
      · exact a
    have u17 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n1
      · exact a
      · exact absurd u13 a
      · exact absurd a u14
    have u18 : v4 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u19 : v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u16
      · exact a
      · exact absurd a n1
    rcases c21 with a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd u17 a
  have c1790 : v1 ∨ v8 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c1714 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v19 := by
      rcases c1786 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c92 with a|a
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
    have u11 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u17
    have u19 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v42 := by
      rcases c1347 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
    have u25 : v26 := by
      rcases c1787 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u26 : ¬v37 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u27 : v36 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u12
      · exact a
      · exact absurd a u21
    have u28 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v9 := by
      rcases c1789 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u32 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u18
    have u33 : ¬v10 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u32 a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u34 : v3 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u31
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd u32 a
      · exact absurd a u33
    have u35 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u34 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
    have u36 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u32 a
    rcases c1578 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u36
    · exact absurd a u35
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a n3
  have c1791 : ¬v32 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    rcases c391 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n12
  have c1792 : v25 ∨ v3 ∨ v4 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v31 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v13 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n7 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n7 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n7 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v38 := by
      rcases c587 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n20
    have u9 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n16
    have u13 : ¬v32 := by
      rcases c1791 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a n17
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u11
  have c1793 : v28 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v14 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n18
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    rcases c328 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n18
    · exact absurd a u3
  have c1794 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v42 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n0
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    rcases c451 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u4
  have c1795 : v48 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u9 : v37 := by
      rcases c1794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
    have u10 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    have u16 : v13 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
    have u17 : v11 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n13
    have u18 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a u11
    rcases c72 with a|a|a
    · exact absurd u18 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c1796 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n4 a
    rcases c500 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
  have c1797 : v22 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v31 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v7 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n1 a
    have u5 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd n8 a
      · exact absurd a n9
    have u8 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n9
    have u9 : v30 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
    have u10 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u11
  have c1798 : ¬v18 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ ¬v38 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : v13 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u10 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v10 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u2
    have u13 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u12 a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u8 a
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u5
  have c1799 : v37 ∨ v3 ∨ v4 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ ¬v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : v39 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n8
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c1800 : ¬v26 ∨ v8 ∨ v9 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v2 := by
      rcases c1797 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a n10
      · exact absurd a n13
    have u9 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    have u14 : v18 := by
      rcases c1795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u15 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v38 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v37 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd u4 a
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u6
    have u24 : v30 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u25 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
    have u26 : v33 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u25
      · exact a
      · exact absurd a u23
    rcases c132 with a|a
    · exact absurd u26 a
    · exact absurd u24 a
  have c1801 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v39 := by
      rcases c1517 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    rcases c607 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
  have c1802 : ¬v26 ∨ v8 ∨ v9 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c1621 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v31 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
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
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v38 := by
      rcases c1801 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u9 a
    have u17 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : v19 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
    have u19 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u2
    have u24 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u6 a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u6 a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v10 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u23 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u29 : v11 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u24
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n9
    have u30 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u26
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u15
    have u31 : v12 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd u29 a
      · exact absurd a u24
      · exact absurd a u21
    rcases c71 with a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd u29 a
  have c1803 : ¬v11 ∨ ¬v1 ∨ ¬v9 ∨ v20 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1438 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1804 : v28 ∨ ¬v1 ∨ ¬v9 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v27 ∨ ¬v31 ∨ v34 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v19 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
    have u7 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v11 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n10
    have u10 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n16
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n15
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n9
  have c1805 : ¬v9 ∨ ¬v1 ∨ ¬v4 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v13 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u4 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n7
  have c1806 : v34 ∨ ¬v1 ∨ ¬v5 ∨ v20 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1658 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1807 : v39 ∨ ¬v1 ∨ v4 ∨ v6 ∨ ¬v9 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n15
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n10
    have u2 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u4
    have u7 : ¬v32 := by
      rcases c1791 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n0
  have c1808 : v47 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ ¬v38 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : v9 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v31 := by
      rcases c1804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v4 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v5 := by
      rcases c1806 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v6 := by
      rcases c1807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u13
      · exact a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u9 a
      · exact absurd u15 a
      · exact a
    have u17 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u2
    have u18 : ¬v13 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n12
    have u19 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u17 a
      · exact absurd u8 a
      · exact a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u19
    · exact absurd u15 a
    · exact absurd a n11
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u16
  have c1809 : v2 ∨ v3 ∨ v4 ∨ v38 ∨ v44 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v37 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
    rcases c1796 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n6
  have c1810 : ¬v6 ∨ ¬v1 ∨ v38 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
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
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n3 a
    rcases c1809 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd n3 a
    · exact absurd a n4
  have c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    rcases c950 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
  have c1812 : v4 ∨ ¬v1 ∨ v3 ∨ ¬v9 ∨ v20 ∨ v21 ∨ v27 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v6 := by
      rcases c1810 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n8
    have u5 : v2 := by
      rcases c1809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n8
    have u6 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a n4
    have u9 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u14 : v41 := by
      rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v39 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n7
    rcases c162 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1813 : v15 ∨ ¬v1 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1810 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd u1 a
      · exact absurd a n12
    have u5 : v3 := by
      rcases c1812 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u9 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a u8
      · exact a
    have u10 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd n4 a
      · exact absurd a n5
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd u9 a
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n6
  have c1814 : v15 ∨ v8 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v45 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v1 := by
      rcases c1790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c1808 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v6 := by
      rcases c1810 with a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a n8
    have u10 : v9 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v4 := by
      rcases c1813 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u11 a
    have u15 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u12
      · exact a
    have u16 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n2
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd u15 a
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a n3
  have c1815 : v6 ∨ ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v9 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
    have u5 : v14 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u1
      · exact a
    have u6 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n5
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
  have c1816 : v7 ∨ v6 ∨ v8 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v14 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u4
  have c1817 : v20 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v21 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v13 := by
      rcases c1816 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1811 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n0
  have c1818 : v26 ∨ ¬v1 ∨ v6 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v4 := by
      rcases c1815 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u5 : v7 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n10
    have u10 : v38 := by
      rcases c580 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u11 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
    have u17 : v13 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u19 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u17 a
      · exact absurd n4 a
      · exact a
    have u22 : ¬v35 := by
      rcases c1700 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd u17 a
      · exact absurd a u20
    rcases c439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n8
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd u17 a
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u22
  have c1819 : v14 ∨ v2 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v19 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n7 a
    have u2 : v16 := by
      rcases c442 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
    rcases c88 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1820 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u1
  have c1821 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v37 ∨ v39 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v30 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1196 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n13
  have c1822 : v2 ∨ v3 ∨ v4 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n18 a
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n18 a
      · exact a
    have u3 : ¬v37 := by
      rcases c1796 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n18 a
      · exact absurd a n19
    have u4 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n20
    have u5 : v18 := by
      rcases c101 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n13
    have u6 : v30 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a u1
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v25 := by
      rcases c231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n16
    have u9 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u8 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n17
  have c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v26 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1275 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
  exact ⟨c1778, c1786, c1787, c1790, c1791, c1796, c1801, c1806, c1810, c1811, c1814, c1815, c1818, c1819, c1821, c1822, c1823⟩
