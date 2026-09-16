import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2200-2249 of the 2934-step refutation of ccase002: 123 core clauses and 78 earlier-derived ones give 11 more. -/
theorem CCase002_block044
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
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
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c146 : ¬v40 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c167 : ¬v47 ∨ ¬v43)
    (c168 : ¬v48 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c173 : ¬v48 ∨ ¬v44)
    (c176 : ¬v45 ∨ ¬v47)
    (c177 : ¬v45 ∨ ¬v48)
    (c179 : ¬v46 ∨ ¬v47)
    (c180 : ¬v48 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c220 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v49 ∨ v41 ∨ v14 ∨ v13 ∨ v8 ∨ v47 ∨ v7 ∨ v36 ∨ v40 ∨ v33)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c273 : v15 ∨ v21 ∨ v1 ∨ v19 ∨ v49 ∨ v14 ∨ v5 ∨ v44 ∨ v12 ∨ v9 ∨ v13 ∨ v43 ∨ v2 ∨ ¬v8)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c335 : ¬v23 ∨ v43 ∨ v35 ∨ v24 ∨ v37 ∨ v15 ∨ v22 ∨ v28 ∨ v31 ∨ v30 ∨ v21 ∨ v16 ∨ v44 ∨ v45)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c416 : ¬v40 ∨ v19 ∨ v39 ∨ v38 ∨ v46 ∨ v26 ∨ v33 ∨ v47 ∨ v34 ∨ v20 ∨ v18 ∨ v41 ∨ v45 ∨ v31)
    (c435 : v22 ∨ v27 ∨ v17 ∨ v21 ∨ v20 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v10 ∨ v13 ∨ v8 ∨ v9 ∨ v3 ∨ v28)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c456 : v36 ∨ v22 ∨ v34 ∨ v28 ∨ v27 ∨ ¬v29 ∨ v1 ∨ v41 ∨ v2 ∨ v35 ∨ v7 ∨ v30 ∨ v37 ∨ v43)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c495 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v28 ∨ v15 ∨ ¬v29 ∨ v16 ∨ v25 ∨ v32 ∨ v30 ∨ v21 ∨ v31 ∨ v39)
    (c501 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v29 ∨ v49 ∨ v36 ∨ v41)
    (c503 : ¬v15 ∨ v16 ∨ v27 ∨ v21 ∨ v1 ∨ v13 ∨ v22 ∨ v28 ∨ v9 ∨ v8 ∨ v20 ∨ v43 ∨ v44 ∨ v49)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c1006 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1273 : ¬v24 ∨ v17 ∨ v18 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c1275 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1377 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1380 : v3 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1866 : v22 ∨ v9 ∨ v14 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2087 : ¬v6 ∨ ¬v9 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c2107 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2347 : ¬v31 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ ¬v23)
    (c2359 : ¬v15 ∨ v47 ∨ v48 ∨ v49)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2366 : ¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2580 : ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2594 : v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2595 : ¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2620 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v44)
    (c2665 : ¬v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19)
    (c2691 : v16 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ ¬v17 ∨ v19 ∨ v23 ∨ v24)
    (c2693 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49)
    (c2723 : v15 ∨ v1 ∨ v8 ∨ v16 ∨ v28 ∨ ¬v32 ∨ v43 ∨ v49)
    (c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20)
    (c2736 : v23 ∨ v48 ∨ v49)
    (c2744 : ¬v20 ∨ v48 ∨ v49)
    (c2752 : ¬v8 ∨ v48 ∨ v49)
    (c2756 : ¬v41 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49)
    (c2781 : v21 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v28 ∨ v48 ∨ v49)
    (c2783 : v12 ∨ v48 ∨ v49)
    (c2784 : v15 ∨ ¬v7 ∨ v48 ∨ v49)
    : (¬v6 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ ¬v15 ∨ v18 ∨ v20 ∨ v22 ∨ v26 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v19 ∨ ¬v15 ∨ v22 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v7 ∨ v48 ∨ v49) ∧ (v48 ∨ v49) ∧ (v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47) ∧ (v13 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49) ∧ (v19 ∨ ¬v6 ∨ v7 ∨ v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49) ∧ (¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v6 ∨ ¬v17 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49) ∧ (v15 ∨ ¬v6 ∨ ¬v16 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49) := by
  have c2785 : ¬v6 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ ¬v15 ∨ v18 ∨ v20 ∨ v22 ∨ v26 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c1866 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    rcases c742 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n6
  have c2786 : ¬v19 ∨ ¬v15 ∨ v22 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1864 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
  have c2787 : ¬v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v12 := by
      rcases c2783 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : v15 := by
      rcases c2784 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : v47 := by
      rcases c2359 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd u16 a
      · exact a
    have u19 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd u16 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
    have u24 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u19
    have u25 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n2
    have u26 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u28 : v5 := by
      rcases c2785 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact absurd u16 a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n2
    rcases c33 with a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd n0 a
  have c2788 : v6 ∨ v17 ∨ v18 ∨ v19 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v12 := by
      rcases c2783 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v7 := by
      rcases c2787 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : v5 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u3 a
    have u17 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v21 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u5
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
    have u21 : v15 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u13
    have u22 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u21 a
    have u23 : v47 := by
      rcases c2359 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v31 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd u2 a
    have u25 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u10
    have u26 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u27
    have u30 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u26
    rcases c24 with a|a|a
    · exact absurd u16 a
    · exact absurd u30 a
    · exact absurd u29 a
  have c2789 : ¬v15 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v12 := by
      rcases c2783 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v7 := by
      rcases c2787 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v19 := by
      rcases c2786 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
    have u17 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd n0 a
      · exact a
    have u18 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
    have u19 : v47 := by
      rcases c2359 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u20 : v6 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
    have u21 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u22
    have u25 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n2
    have u27 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v31 := by
      rcases c2594 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u26 a
      · exact absurd a u29
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u21
    have u31 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : v16 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd u2 a
    have u33 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u31
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u27
    rcases c62 with a|a|a
    · exact absurd u32 a
    · exact absurd u33 a
    · exact absurd n0 a
  have c2790 : v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : ¬v15 := by
      rcases c2789 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u5 : v12 := by
      rcases c2783 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u6 : ¬v7 := by
      rcases c2787 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u7 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v21 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u11
    rcases c2781 with a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n1
  have c2791 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1559 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    rcases c1574 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2793 : v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2792 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2794 : ¬v42 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v22 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
    have u7 : v35 := by
      rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n8
    rcases c127 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2795 : v15 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v33 := by
      rcases c2791 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v42 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n12
    have u9 : v8 := by
      rcases c2794 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u10 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u6
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
    have u14 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    rcases c480 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u13
  have c2796 : ¬v6 ∨ v7 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v14 := by
      rcases c2795 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u13 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u14 : v21 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u15 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n0 a
      · exact absurd a u9
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u17 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
  have c2797 : v15 ∨ ¬v6 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u10 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u12 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v2 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
    have u14 : v21 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
    have u15 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u8
    have u16 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u12
    have u17 : v16 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c76 with a|a|a
    · exact absurd u17 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c2798 : v14 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u8 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u12 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u11 a
      · exact a
    rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u8
  have c2799 : ¬v5 ∨ ¬v6 ∨ v7 ∨ ¬v8 ∨ v14 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v2 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u1
    rcases c21 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c2800 : v26 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c2796 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v14 := by
      rcases c2797 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v21 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v8 := by
      rcases c2798 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v5 := by
      rcases c2799 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
    have u15 : v33 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u11
    have u16 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v42 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n10
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    rcases c501 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a u20
    · exact absurd a u10
  have c2801 : v7 ∨ ¬v6 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c2800 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
    have u13 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u14 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u15 : ¬v2 := by
      rcases c2366 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u16 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n9
    have u18 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v42 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n9
    have u21 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u20 a
      · exact a
    rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u4
  have c2802 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u4 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u6 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1273 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c2803 : v19 ∨ ¬v6 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u6 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
    have u7 : v16 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u7 a
      · exact absurd n6 a
      · exact a
    have u14 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u7 a
      · exact absurd n6 a
      · exact a
    have u15 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v29 := by
      rcases c2802 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    have u18 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n11
    have u19 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u10
    have u22 : v35 := by
      rcases c501 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a u4
    have u23 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u24
    have u27 : ¬v25 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c1273 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u25
  have c2804 : ¬v18 ∨ v8 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
  have c2805 : v13 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u7 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u1
  have c2806 : ¬v6 ∨ v7 ∨ v8 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v13 := by
      rcases c2803 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v29 := by
      rcases c2805 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u13 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n11
    have u14 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u1
    have u17 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u1
    have u18 : v35 := by
      rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u16
    have u19 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v18 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u20
    have u23 : ¬v25 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u24 : v11 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u25 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd u3 a
      · exact a
    have u29 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u16
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
    have u30 : ¬v2 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u31 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
    have u32 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd n0 a
    have u33 : ¬v3 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd a u7
      · exact absurd a u30
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u26
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u33
    · exact absurd a u28
    · exact absurd a u31
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u20
  have c2808 : v19 ∨ ¬v6 ∨ v7 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u3 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u13 : ¬v24 := by
      rcases c1006 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v25 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v3 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u19 : v9 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
    have u20 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u19 a
      · exact a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd u16 a
    · exact absurd a u20
  have c2809 : v32 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
    have u2 : v21 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n0
    have u5 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n12
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n9
  have c2810 : ¬v6 ∨ v7 ∨ v8 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u1 a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v30 := by
      rcases c2808 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u13
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v2 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : v23 := by
      rcases c2809 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u12
    have u22 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd u23 a
      · exact a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u19
  have c2811 : v16 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n14
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u8 : v31 := by
      rcases c2810 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n14
    have u9 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u14 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u15 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v2 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v23 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u17
  have c2812 : ¬v6 ∨ v7 ∨ v8 ∨ v14 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v21 := by
      rcases c2806 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u11 : v29 := by
      rcases c2811 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u12 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v23 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u13
    have u17 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u20 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n0 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd u20 a
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a u4
    · exact absurd a u22
  have c2813 : v31 ∨ v3 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v29 := by
      rcases c2802 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
    have u7 : ¬v24 := by
      rcases c1006 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u8 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n10
    rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2814 : v17 ∨ ¬v6 ∨ v7 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v8 := by
      rcases c2812 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u4 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v29 := by
      rcases c2802 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
    have u15 : v16 := by
      rcases c2813 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u2 a
    have u17 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u18 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    have u19 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n12
    have u20 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
    have u23 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n11
    have u24 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n11
    · exact absurd u25 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u18
  have c2815 : v18 ∨ ¬v6 ∨ v7 ∨ v14 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v8 := by
      rcases c2812 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v31 := by
      rcases c2814 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u8 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2816 : v49 ∨ ¬v6 ∨ v7 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v8 := by
      rcases c2812 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u4 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
    have u13 : v17 := by
      rcases c2815 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u14 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u18 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a n0
      · exact a
    have u23 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
    rcases c501 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u17
  have c2817 : v22 ∨ ¬v6 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v8 := by
      rcases c2812 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v18 := by
      rcases c2816 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u13 a
    have u17 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u18 : ¬v24 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a n4
    have u19 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v42 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n9
    have u23 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v2 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u5
    have u26 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd n1 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd u25 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2818 : v19 ∨ ¬v6 ∨ v7 ∨ v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u2 : v14 := by
      rcases c2817 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u15 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v21 := by
      rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n8
    have u17 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u3 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u3 a
    have u19 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u20 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u21 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u21
    have u25 : ¬v24 := by
      rcases c1006 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u21
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u25
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n7
  have c2819 : v20 ∨ ¬v6 ∨ v7 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v17 := by
      rcases c2818 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v14 := by
      rcases c2817 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v15 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u9 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n8
  have c2820 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c416 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n5
  have c2821 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2820 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2822 : v20 ∨ ¬v6 ∨ ¬v7 ∨ ¬v15 ∨ ¬v17 ∨ v19 ∨ v22 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u6 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u8 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v11 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n5
    have u13 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
    have u14 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u9
      · exact a
    rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2823 : v15 ∨ v3 ∨ ¬v6 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v21 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u5 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u14 : ¬v32 := by
      rcases c2723 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a u10
      · exact absurd a n10
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd n2 a
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2824 : v16 ∨ ¬v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n11 a
    have u5 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n11 a
    have u6 : v7 := by
      rcases c2819 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u8 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : v36 := by
      rcases c495 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd n11 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u14
    have u18 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v9 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n12
    have u21 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u8
    have u22 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u21 a
      · exact a
    rcases c335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
  have c2825 : v16 ∨ ¬v6 ∨ ¬v17 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : v7 := by
      rcases c2819 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u5 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u7 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u8 : ¬v15 := by
      rcases c2822 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u9 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v18 := by
      rcases c2823 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u14 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
    have u16 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : v25 := by
      rcases c2824 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
    have u18 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u9
    rcases c2691 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd u20 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u19
  have c2826 : v13 ∨ v1 ∨ v2 ∨ v5 ∨ ¬v8 ∨ v9 ∨ v12 ∨ v15 ∨ v19 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n4 a
      · exact a
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd n4 a
  have c2827 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v9 ∨ v12 ∨ v15 ∨ v19 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2826 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2828 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v9 ∨ v15 ∨ v19 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2827 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2829 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v15 ∨ v19 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2828 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2830 : v19 ∨ ¬v6 ∨ v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v7 := by
      rcases c2819 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u7 : ¬v15 := by
      rcases c2822 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u8 : ¬v29 := by
      rcases c2825 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u9 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u10 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v21 := by
      rcases c436 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u13 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u10
  have c2831 : ¬v6 ∨ ¬v17 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v16 := by
      rcases c2830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u11 : v7 := by
      rcases c2801 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n0 a
    have u13 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u14 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u15 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n0 a
    have u16 : ¬v8 := by
      rcases c2829 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u17 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n8
    have u18 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u19 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u25 : ¬v25 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u26 : ¬v40 := by
      rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u27 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u21
    have u28 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u26
    rcases c51 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c2832 : ¬v11 ∨ v3 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
    have u6 : ¬v20 := by
      rcases c2734 with a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd n3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd u5 a
    have u11 : v18 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
    rcases c1220 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u9
  have c2833 : v5 ∨ v11 ∨ ¬v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ ¬v29 ∨ v37 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v36 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd n9 a
      · exact absurd a u7
    have u9 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u9
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1220 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd n2 a
    · exact absurd a u5
    · exact absurd a u7
  have c2834 : ¬v16 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v6 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n15
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c2829 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
    have u8 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n12
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v11 := by
      rcases c2832 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
    have u15 : v25 := by
      rcases c2833 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n13
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u3
    have u16 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u16
      · exact absurd a u17
    have u19 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
    rcases c42 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2835 : v15 ∨ ¬v6 ∨ ¬v16 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c2831 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u3 : v7 := by
      rcases c2818 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u9 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u10 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u11 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u12 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u13 : v21 := by
      rcases c2834 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u14 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n8
    have u15 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u16 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v23 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
    rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n9
  exact ⟨c2785, c2786, c2787, c2790, c2792, c2793, c2805, c2818, c2821, c2831, c2835⟩
