import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1500-1549 of the 2934-step refutation of ccase002: 135 core clauses and 74 earlier-derived ones give 14 more. -/
theorem CCase002_block030
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c44 : ¬v9 ∨ ¬v12)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c57 : v14 ∨ v13 ∨ v12 ∨ v8 ∨ v9 ∨ v11 ∨ v10)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c95 : v21 ∨ v20 ∨ v17 ∨ v18 ∨ v16 ∨ v15)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c166 : ¬v43 ∨ ¬v46)
    (c171 : ¬v44 ∨ ¬v46)
    (c175 : ¬v45 ∨ ¬v46)
    (c176 : ¬v45 ∨ ¬v47)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c207 : ¬v31 ∨ v38 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v32 ∨ v30)
    (c212 : ¬v46 ∨ v3 ∨ v40 ∨ v25 ∨ v26 ∨ v24 ∨ v32 ∨ v2 ∨ v37 ∨ v4 ∨ v39 ∨ v44 ∨ v45 ∨ v47)
    (c225 : ¬v46 ∨ v39 ∨ v38 ∨ v45 ∨ v4 ∨ v40 ∨ v3 ∨ v47)
    (c235 : ¬v46 ∨ v39 ∨ v3 ∨ v47 ∨ v40 ∨ v5 ∨ v4 ∨ v45)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c267 : ¬v38 ∨ v36 ∨ v44 ∨ v31 ∨ v45 ∨ v24 ∨ v35 ∨ v25 ∨ v39 ∨ v42 ∨ v23 ∨ v32 ∨ v37 ∨ v49)
    (c273 : v15 ∨ v21 ∨ v1 ∨ v19 ∨ v49 ∨ v14 ∨ v5 ∨ v44 ∨ v12 ∨ v9 ∨ v13 ∨ v43 ∨ v2 ∨ ¬v8)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c344 : v36 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v43 ∨ v30 ∨ v38 ∨ v29)
    (c348 : v43 ∨ ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v44 ∨ v45 ∨ v10)
    (c353 : ¬v46 ∨ v11 ∨ v40 ∨ v4 ∨ v39 ∨ v12 ∨ v7 ∨ v10 ∨ v3 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c367 : ¬v46 ∨ v4 ∨ v40 ∨ v38 ∨ v39 ∨ v5 ∨ v45 ∨ v47)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c388 : ¬v40 ∨ v33 ∨ v41 ∨ v48 ∨ v5 ∨ v38 ∨ v12 ∨ v31 ∨ v11 ∨ v13 ∨ v39 ∨ v45 ∨ v47 ∨ v32)
    (c393 : v36 ∨ v29 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ ¬v30)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c435 : v22 ∨ v27 ∨ v17 ∨ v21 ∨ v20 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v10 ∨ v13 ∨ v8 ∨ v9 ∨ v3 ∨ v28)
    (c437 : ¬v31 ∨ v38 ∨ v18 ∨ v37 ∨ v24 ∨ v16 ∨ v28 ∨ v17 ∨ v25 ∨ v32 ∨ v35 ∨ v29 ∨ v30 ∨ v42)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c481 : v29 ∨ v22 ∨ v43 ∨ v44 ∨ v35 ∨ v31 ∨ v41 ∨ v23 ∨ v38 ∨ v34 ∨ v27 ∨ v37 ∨ ¬v30 ∨ v45)
    (c494 : v43 ∨ v29 ∨ v21 ∨ v23 ∨ ¬v22 ∨ v30 ∨ v34 ∨ v20 ∨ v36 ∨ v15 ∨ v27 ∨ v28 ∨ v44 ∨ v49)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c498 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ ¬v3 ∨ v9 ∨ v10)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c791 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1165 : ¬v17 ∨ ¬v16 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1215 : v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1273 : ¬v24 ∨ v17 ∨ v18 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1292 : v29 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ ¬v34 ∨ v38 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1334 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1361 : ¬v29 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1554 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1904 : ¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21)
    (c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1942 : v19 ∨ v6 ∨ v13 ∨ v17 ∨ v18 ∨ v20 ∨ v26 ∨ ¬v33 ∨ v47 ∨ v48 ∨ v49)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2025 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26)
    (c2035 : v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c2038 : v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2040 : ¬v34 ∨ v27 ∨ ¬v39)
    (c2042 : ¬v3 ∨ v4 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2058 : v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2060 : v47 ∨ v8 ∨ v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v48 ∨ v49)
    (c2061 : v12 ∨ v3 ∨ v4 ∨ ¬v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    : (¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42) ∧ (¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33) ∧ (v17 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24) ∧ (v39 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ ¬v40 ∨ v45 ∨ v47 ∨ v48) ∧ (¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v6 ∨ ¬v9 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (¬v5 ∨ ¬v3 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v44 ∨ v49) ∧ (¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45) ∧ (¬v16 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v7 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v3 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v34 ∨ v37 ∨ v38 ∨ v42) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35) := by
  have c2063 : v18 ∨ ¬v6 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v46 := by
      rcases c2038 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u9 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u10 : v12 := by
      rcases c2061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c742 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c2064 : v38 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n7 a
    have u5 : v17 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
    have u6 : v16 := by
      rcases c97 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u8 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v29 := by
      rcases c2063 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n12
    have u15 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd n7 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n12
    have u16 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v37 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u15 a
    have u20 : ¬v42 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u17
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n10
      · exact absurd a n12
    have u24 : v3 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u21
      · exact a
      · exact absurd a n10
    rcases c29 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u8 a
  have c2065 : v21 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v22 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v38 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n6 a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
    have u18 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u17
      · exact absurd a u12
    have u19 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
    have u20 : v31 := by
      rcases c267 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n11
    have u21 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u20 a
      · exact a
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd n6 a
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a n11
  have c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    rcases c791 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2067 : v27 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ ¬v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v3 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v7 := by
      rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a u7
    rcases c33 with a|a|a
    · exact absurd u13 a
    · exact absurd u9 a
    · exact absurd u12 a
  have c2068 : ¬v6 ∨ ¬v8 ∨ v10 ∨ v13 ∨ v15 ∨ v19 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v3 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v2 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
    have u13 : v7 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u14 : v5 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd n1 a
    rcases c33 with a|a|a
    · exact absurd u14 a
    · exact absurd n0 a
    · exact absurd u13 a
  have c2069 : v47 ∨ v10 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v24 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v17 := by
      rcases c2058 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v22 := by
      rcases c2065 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v8 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v6 := by
      rcases c2068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v38 := by
      rcases c2067 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u16 a
      · exact absurd a n7
      · exact a
    have u20 : ¬v28 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
    have u21 : ¬v42 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd n4 a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a u21
    have u23 : v1 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u22 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u25
  have c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v18 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n4
    have u9 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u10 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
    have u11 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u6
    have u12 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u2
    have u13 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u13
  have c2073 : v19 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c2069 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v23 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u8 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v21 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
    have u12 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
    rcases c98 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
  have c2074 : v17 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2075 : v20 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v24 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v10 := by
      rcases c2069 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v22 := by
      rcases c2073 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v21 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
    have u12 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u6 a
    have u13 : v17 := by
      rcases c2074 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact absurd u13 a
      · exact a
    have u17 : v38 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u14
    have u24 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u23
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u21
    have u25 : ¬v35 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u18
    have u26 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u24 a
      · exact absurd u15 a
      · exact a
    rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a n9
  have c2076 : v24 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v10 := by
      rcases c2069 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v19 := by
      rcases c2075 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v26 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
    have u7 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
  have c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
    have u8 : v12 := by
      rcases c1001 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n3
    have u9 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u9
  have c2078 : v28 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v46 := by
      rcases c2038 with a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u4
    have u10 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n16
    have u12 : v3 := by
      rcases c2061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c29 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u2 a
  have c2079 : v39 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ ¬v40 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n9 a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n6
  have c2080 : v13 ∨ v8 ∨ ¬v10 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v46 := by
      rcases c2035 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v34 := by
      rcases c2078 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u7 a
      · exact absurd a n11
      · exact a
    have u13 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n15
    have u14 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n15
    have u16 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n13
      · exact a
    rcases c2079 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd u16 a
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a n14
  have c2081 : v17 ∨ v8 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v24 := by
      rcases c2076 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd u1 a
    have u8 : v18 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u3
    have u9 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
    have u11 : ¬v10 := by
      rcases c2080 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v12 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    have u13 : v9 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u4
    rcases c44 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2082 : ¬v16 ∨ v13 ∨ v15 ∨ v17 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c2076 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd u1 a
    have u8 : v18 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
    have u9 : v8 := by
      rcases c2081 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u9 a
      · exact a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u12
  have c2083 : v47 ∨ ¬v8 ∨ v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : v24 := by
      rcases c2076 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v17 := by
      rcases c2082 with a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v38 := by
      rcases c2067 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd u6 a
    have u13 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v6 := by
      rcases c2068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u17 a
      · exact absurd a n6
      · exact a
    have u21 : ¬v42 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd n4 a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u22 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u21
    have u23 : v41 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u19
      · exact a
      · exact absurd a u21
    have u24 : v1 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u22 a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u24 a
      · exact absurd u22 a
      · exact a
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a n0
  have c2084 : v47 ∨ v8 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd n10 a
      · exact absurd a n8
      · exact a
    have u5 : v46 := by
      rcases c2035 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n12
    have u10 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n12
    have u12 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n12
    have u13 : v4 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
    have u14 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u13 a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u9 a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n12
  have c2085 : v13 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v8 := by
      rcases c2083 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v24 := by
      rcases c2076 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u6 a
    have u12 : v17 := by
      rcases c2082 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v34 := by
      rcases c2084 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
    have u21 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v36 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u19
    have u23 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u19
    have u24 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n7
    have u28 : v3 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u25
      · exact a
      · exact absurd a n5
    rcases c29 with a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u15 a
  have c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c1361 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u5 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n6
  have c2087 : ¬v6 ∨ ¬v9 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n8
    have u4 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
    rcases c33 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c2088 : v19 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n14
    have u2 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u5 : v12 := by
      rcases c57 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
    have u6 : ¬v18 := by
      rcases c1904 with a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
    rcases c742 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n10
  have c2089 : v19 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u2
    have u6 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n17
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v9 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u9 : v14 := by
      rcases c2088 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a u7
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v7 := by
      rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n14
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n16
    rcases c33 with a|a|a
    · exact absurd u12 a
    · exact absurd u1 a
    · exact absurd u11 a
  have c2091 : v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u1 a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v40 := by
      rcases c2089 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v5 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u6
      · exact a
    have u11 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact a
    have u12 : v14 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u11
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n20
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u12 a
    rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd u12 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n15
  have c2092 : v13 ∨ v3 ∨ v8 ∨ v10 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v11 := by
      rcases c2091 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u3 a
      · exact a
    rcases c330 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u4
  have c2093 : v3 ∨ ¬v6 ∨ v8 ∨ ¬v10 ∨ v13 ∨ v17 ∨ v18 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v2 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u2
      · exact a
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
  have c2094 : v47 ∨ v3 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v10 := by
      rcases c2093 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v42 := by
      rcases c2092 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n4 a
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
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n0
  have c2095 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n2
  have c2096 : v3 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v10 := by
      rcases c2093 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v25 := by
      rcases c2094 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u10 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact a
      · exact absurd a u12
    have u15 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u6
    have u18 : ¬v9 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n16
    have u19 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact a
    have u20 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u19
      · exact a
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u10
    rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd u20 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a n12
  have c2097 : v47 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c2095 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
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
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
  have c2098 : v3 ∨ v17 ∨ v19 ∨ v21 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v40 ∨ v42 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n13 a
    have u3 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n7
    have u4 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n11
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n12
    rcases c877 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n15
  have c2099 : ¬v5 ∨ ¬v3 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v6 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u5 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
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
    have u11 : v45 := by
      rcases c498 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u9
    have u12 : ¬v48 := by
      rcases c177 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v47 := by
      rcases c176 with a|a
      · exact absurd u11 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u10
    · exact absurd a u7
  have c2100 : v21 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v34 := by
      rcases c2097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u13 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v3 := by
      rcases c2098 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n14
    have u19 : ¬v6 := by
      rcases c2095 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v5 := by
      rcases c2099 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n14
    have u21 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u17
    have u22 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u21 a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n5
    · exact absurd u21 a
  have c2101 : ¬v34 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
    have u7 : v42 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n7
  have c2102 : v47 ∨ v8 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c2101 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n10 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v3 := by
      rcases c2095 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v10 := by
      rcases c2093 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u14 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
    have u18 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u19 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u5
    have u20 : v2 := by
      rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    rcases c21 with a|a|a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd u8 a
  have c2103 : v3 ∨ ¬v6 ∨ v8 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v10 := by
      rcases c2093 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
    have u7 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
    have u12 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u13 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u2
    have u14 : v2 := by
      rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n11
    rcases c21 with a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd n1 a
  have c2104 : v49 ∨ v3 ∨ v8 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v28 := by
      rcases c2102 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n15
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v6 := by
      rcases c2103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u7 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u8 : ¬v33 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u7 a
      · exact absurd a n13
      · exact a
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u16 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a u4
    have u17 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u18 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a u21
    have u23 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u20
    have u24 : v4 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u4
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n14
    rcases c31 with a|a|a
    · exact absurd u22 a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2105 : v21 ∨ v8 ∨ v13 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c2102 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v22 := by
      rcases c2100 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v3 := by
      rcases c2104 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v6 := by
      rcases c2095 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v33 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u20 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u12 a
      · exact absurd a u19
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v5 := by
      rcases c2099 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a n12
    have u24 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u22
    have u25 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u24 a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd u24 a
  have c2106 : v49 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v38 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c2095 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u4 : ¬v33 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u13 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u14 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n0
    have u18 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u16
    rcases c2099 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd n1 a
    · exact absurd a n8
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a n0
  have c2107 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u5 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u3
  have c2108 : ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v21 ∨ ¬v24 ∨ v29 ∨ v31 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n10 a
    have u6 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n10 a
      · exact a
    have u7 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v30 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd n10 a
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n12
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v37 := by
      rcases c481 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a u2
      · exact a
      · exact absurd u9 a
      · exact absurd a u11
    have u15 : ¬v3 := by
      rcases c2042 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u14 a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u17
    · exact absurd a n14
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n15
  have c2109 : v38 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n13 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n13 a
    have u4 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd n13 a
    have u5 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u2
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v31 := by
      rcases c2108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n17
      · exact absurd a n18
    have u15 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a u14
    have u16 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u15 a
    have u17 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u16
    have u18 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n16
      · exact a
    rcases c158 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2110 : v17 ∨ v13 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v8 := by
      rcases c2105 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2067 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v3 := by
      rcases c2106 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u3
    have u14 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v24 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u11
      · exact a
    have u17 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a n11
    have u25 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
    have u26 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n11
      · exact absurd a u17
    have u27 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u19
    have u28 : v39 := by
      rcases c207 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u27
      · exact a
      · exact absurd a u20
      · exact absurd a u18
    have u29 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u26 a
    have u30 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u28 a
      · exact a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u30
  have c2111 : ¬v16 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v15 := by
      rcases c2085 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u10 : v26 := by
      rcases c2110 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n3
      · exact a
    have u15 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u20
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u23 : ¬v42 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v11 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a n6
    have u25 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v3 := by
      rcases c2095 with a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u20
    have u28 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u32 : ¬v2 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u30
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u32
  have c2113 : v7 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n3
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n3
  have c2114 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c2113 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2115 : v20 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v34 ∨ v37 ∨ v38 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v19 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    have u2 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : v15 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
      · exact a
    have u7 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u5
    have u8 : v25 := by
      rcases c437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n11
    have u9 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1334 with a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u7
  have c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    rcases c984 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  exact ⟨c2066, c2070, c2074, c2077, c2079, c2086, c2087, c2099, c2107, c2111, c2113, c2114, c2115, c2116⟩
