import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1900-1949 of the 2934-step refutation of ccase002: 117 core clauses and 87 earlier-derived ones give 15 more. -/
theorem CCase002_block038
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
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
    (c147 : ¬v41 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c223 : ¬v47 ∨ v36 ∨ v40 ∨ v12 ∨ v4 ∨ v11 ∨ v1 ∨ v46 ∨ v41 ∨ v43 ∨ v5 ∨ v13 ∨ v48 ∨ v49)
    (c240 : v43 ∨ v6 ∨ v3 ∨ ¬v14 ∨ v7 ∨ v15 ∨ v17 ∨ v9 ∨ v13 ∨ v10 ∨ v21 ∨ v8 ∨ v48 ∨ v49)
    (c270 : v13 ∨ v12 ∨ v48 ∨ v49 ∨ v14 ∨ v7 ∨ v5 ∨ ¬v6)
    (c273 : v15 ∨ v21 ∨ v1 ∨ v19 ∨ v49 ∨ v14 ∨ v5 ∨ v44 ∨ v12 ∨ v9 ∨ v13 ∨ v43 ∨ v2 ∨ ¬v8)
    (c279 : v15 ∨ v34 ∨ v19 ∨ ¬v13 ∨ v27 ∨ v35 ∨ v7 ∨ v1 ∨ v12 ∨ v20 ∨ v8 ∨ v14 ∨ v33 ∨ v6)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c348 : v43 ∨ ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v44 ∨ v45 ∨ v10)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c363 : v16 ∨ v44 ∨ v17 ∨ v3 ∨ v45 ∨ v4 ∨ v7 ∨ v9 ∨ v14 ∨ v8 ∨ ¬v10 ∨ v11 ∨ v21 ∨ v46)
    (c369 : ¬v25 ∨ v18 ∨ v35 ∨ v40 ∨ v32 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v31 ∨ v24 ∨ v38 ∨ v39 ∨ v28)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c395 : ¬v39 ∨ v38 ∨ v46 ∨ v31 ∨ v32 ∨ v45 ∨ v33 ∨ v40)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c434 : v43 ∨ ¬v16 ∨ v45 ∨ v21 ∨ v10 ∨ v23 ∨ v9 ∨ v28 ∨ v17 ∨ v15 ∨ v14 ∨ v2 ∨ v44 ∨ v22)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c494 : v43 ∨ v29 ∨ v21 ∨ v23 ∨ ¬v22 ∨ v30 ∨ v34 ∨ v20 ∨ v36 ∨ v15 ∨ v27 ∨ v28 ∨ v44 ∨ v49)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c526 : v26 ∨ v44 ∨ v3 ∨ v18 ∨ v2 ∨ v46 ∨ v45 ∨ v5 ∨ v24 ∨ v25 ∨ v12 ∨ v9 ∨ ¬v4 ∨ v11)
    (c527 : ¬v47 ∨ v40 ∨ v2 ∨ v37 ∨ v13 ∨ v11 ∨ v5 ∨ v39 ∨ v12 ∨ v6 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c533 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v34 ∨ v29 ∨ v28 ∨ v22)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c769 : v18 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28)
    (c1235 : ¬v12 ∨ ¬v16 ∨ ¬v20 ∨ v23)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1350 : v29 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v42 ∨ v49)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1808 : ¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c1994 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v43 ∨ v48 ∨ v49)
    (c1995 : v14 ∨ v7 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ ¬v26 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2025 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26)
    (c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2062 : v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v43 ∨ v44 ∨ v49)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2074 : v17 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2169 : ¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45)
    (c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2270 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2319 : ¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49)
    (c2321 : v21 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2366 : ¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2381 : ¬v19 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v17 ∨ v23)
    (c2386 : ¬v1 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2407 : ¬v25 ∨ v16 ∨ ¬v17 ∨ v18 ∨ ¬v21)
    (c2408 : ¬v32 ∨ v6 ∨ v13 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2421 : v23 ∨ ¬v1 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ ¬v40 ∨ v44 ∨ v49)
    (c2422 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48)
    (c2425 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c2428 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2438 : ¬v39 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ v43 ∨ v45 ∨ v46)
    (c2446 : v16 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49)
    (c2453 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ ¬v47 ∨ v48)
    (c2454 : ¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2460 : v17 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46)
    (c2461 : v27 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2465 : ¬v4 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v16 ∨ v48 ∨ v49)
    (c2469 : v16 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49)
    (c2473 : v49 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v48)
    (c2474 : ¬v1 ∨ ¬v4 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2475 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v14 ∨ v48 ∨ v49)
    (c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    : (¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23) ∧ (¬v20 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46) ∧ (v46 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v26 ∨ ¬v30 ∨ v45) ∧ (v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v33 ∨ v18 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v39 ∨ v40) ∧ (v22 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v19 ∨ v20 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v19 ∨ v9 ∨ v15 ∨ v23 ∨ v28 ∨ v29 ∨ v48 ∨ v49) ∧ (v19 ∨ v9 ∨ v15 ∨ v23 ∨ v29 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v48 ∨ v49) ∧ (v40 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (v22 ∨ v9 ∨ v15 ∨ ¬v16 ∨ ¬v19 ∨ v23) ∧ (v22 ∨ v8 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49) ∧ (¬v8 ∨ v9 ∨ v15 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49) := by
  have c2477 : v27 ∨ v2 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v5 := by
      rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n14
    have u12 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u11 a
      · exact absurd n2 a
      · exact a
    have u13 : v22 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n15
    have u14 : v23 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
    rcases c100 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2478 : v48 ∨ ¬v4 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v15 ∨ v19 ∨ v23 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v16 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u6 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v7 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n10
    have u14 : ¬v2 := by
      rcases c2270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : v21 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u12
    have u16 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u5 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u5 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u5 a
      · exact absurd u15 a
      · exact a
    have u19 : v22 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
    have u20 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v6 := by
      rcases c2477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
    have u24 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u23 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd u23 a
  have c2479 : v12 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v18 := by
      rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n3 a
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u1 a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2480 : v28 ∨ ¬v4 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v15 ∨ v19 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v8 := by
      rcases c2478 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u5 : v16 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u13 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u14 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u11
      · exact a
    have u15 : ¬v2 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u4
    have u16 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v21 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd u5 a
      · exact a
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n0
    have u20 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd u14 a
    have u21 : v12 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v20 := by
      rcases c1235 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u5 a
      · exact a
      · exact absurd a n7
    have u24 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd u14 a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n10
    have u25 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    rcases c2321 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n10
  have c2481 : v21 ∨ v6 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v20 := by
      rcases c1235 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n10
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v30 := by
      rcases c2062 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    rcases c2319 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n12
  have c2482 : v49 ∨ v1 ∨ ¬v4 ∨ v6 ∨ v8 ∨ v12 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n0
    have u2 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
    have u5 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n0
    have u6 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u5 a
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n0
    have u7 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v41 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n0
    have u11 : v13 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n15
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v7 := by
      rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd u11 a
      · exact absurd a n11
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n3
    rcases c2475 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u12
    · exact absurd a n15
    · exact absurd a n0
  have c2483 : v23 ∨ ¬v4 ∨ v9 ∨ v11 ∨ v15 ∨ v19 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v16 := by
      rcases c2469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u9 : ¬v1 := by
      rcases c2474 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u10 : ¬v8 := by
      rcases c2478 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u11 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u7
      · exact a
    have u12 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v21 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n6
    have u15 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd u11 a
    have u16 : ¬v6 := by
      rcases c2480 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v12 := by
      rcases c2481 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v20 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n8
    have u19 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u2 a
      · exact absurd u18 a
      · exact a
    have u20 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n6
    have u21 : v10 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a n2
    rcases c49 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v22 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u5 : v24 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
    rcases c101 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2485 : ¬v20 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2484 with a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n4
  have c2486 : v4 ∨ v11 ∨ ¬v13 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c1808 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
    have u3 : v17 := by
      rcases c2484 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v1 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u12 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd u12 a
    have u17 : v30 := by
      rcases c2062 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd u12 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u18 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u14
      · exact absurd a u19
    rcases c2438 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u6
  have c2488 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
  have c2489 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2488 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2490 : v46 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v26 ∨ ¬v30 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
    have u5 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u3
    have u6 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v17 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a u1
    have u8 : v19 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u6
      · exact a
    rcases c74 with a|a|a
    · exact absurd n3 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
  have c2492 : v21 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v1 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u10 : ¬v2 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
    have u11 : v7 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v16 := by
      rcases c436 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a n6
    have u13 : v17 := by
      rcases c434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n7
    have u14 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd u5 a
  have c2493 : ¬v33 ∨ v18 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v25 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n5
    have u5 : v41 := by
      rcases c860 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u6 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v17 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
    have u9 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v21 := by
      rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u6
    have u11 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    rcases c2407 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u11
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd u10 a
  have c2494 : v26 ∨ v9 ∨ v11 ∨ v12 ∨ v15 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v28 ∨ v29 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v16 := by
      rcases c2469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n9
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v13 := by
      rcases c2486 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v30 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u7
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u13 : ¬v22 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n13
    have u14 : ¬v6 := by
      rcases c2492 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v33 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    rcases c2493 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a u17
    · exact absurd a u16
  have c2495 : v11 ∨ v9 ∨ v12 ∨ v15 ∨ ¬v17 ∨ v19 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v16 := by
      rcases c2469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u2 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v34 := by
      rcases c2494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
    have u13 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u12
      · exact a
      · exact absurd a u10
    have u14 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    rcases c221 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a n5
  have c2496 : v48 ∨ v9 ∨ v11 ∨ v12 ∨ v15 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u2 : ¬v17 := by
      rcases c2495 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u3 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u9 : v16 := by
      rcases c2469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u10 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a n7
    have u11 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u12 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
    have u13 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v18 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u9 a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
    have u15 : v10 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n2
      · exact a
    have u16 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u18 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
    have u19 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u20 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n0
  have c2497 : v11 ∨ v9 ∨ v12 ∨ v15 ∨ v19 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c2495 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v22 := by
      rcases c2496 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v16 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u13 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a n5
    have u14 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
    have u15 : v21 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u12
      · exact a
    have u16 : v8 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n7
    have u17 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v3 := by
      rcases c2460 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v32 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u21 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v39 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u20
      · exact a
      · exact absurd a u4
    rcases c159 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2498 : v48 ∨ v9 ∨ v11 ∨ v12 ∨ v15 ∨ v19 ∨ v23 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u8 : v26 := by
      rcases c2497 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u9 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v16 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u13 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n7
    have u14 : v17 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u12 a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u11
    have u15 : v33 := by
      rcases c2070 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a n5
      · exact a
    have u16 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u19
    have u22 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
    have u23 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v13 := by
      rcases c2486 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u26 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u18
    have u27 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u28 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v1 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a n9
    have u30 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u28
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a n9
    have u31 : v5 := by
      rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u6
      · exact a
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a n9
    rcases c2354 with a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd a u28
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n9
  have c2499 : v22 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v19 ∨ v20 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v5 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a u1
    rcases c1839 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2500 : v29 ∨ v9 ∨ v11 ∨ v15 ∨ v19 ∨ v23 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u8 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v12 := by
      rcases c2498 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v16 := by
      rcases c2446 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v20 := by
      rcases c1235 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact a
      · exact absurd a n5
    have u15 : v22 := by
      rcases c2499 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u16 : ¬v21 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
    have u17 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd u15 a
    have u21 : v17 := by
      rcases c2074 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u22 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u15 a
      · exact a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
    have u23 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u13 a
      · exact absurd u21 a
      · exact a
    rcases c2490 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd u13 a
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd u22 a
    · exact absurd a u4
  have c2501 : v19 ∨ v9 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v11 := by
      rcases c2500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v16 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : v17 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n1
    have u16 : ¬v20 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
    have u17 : ¬v21 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n5
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
    have u19 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd n3 a
    have u21 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd n3 a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n8
    have u22 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
    have u27 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v41 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a n8
  have c2502 : v19 ∨ v9 ∨ v15 ∨ v23 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c2501 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v27 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v11 := by
      rcases c2500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u14 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u16 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u17 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u18 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n6
    have u19 : v18 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
    have u20 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u19 a
      · exact absurd a u5
      · exact absurd a n4
    have u22 : ¬v16 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a n3
    have u23 : v24 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u18 a
      · exact absurd a u3
      · exact absurd a n7
    have u24 : ¬v20 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
    have u25 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u23 a
    rcases c2476 with a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
  have c2503 : ¬v11 ∨ v15 ∨ v20 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    rcases c2491 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n9
  have c2504 : v19 ∨ v9 ∨ v15 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c2502 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u13 : v16 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
    have u15 : v17 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u7
    have u16 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u13 a
      · exact absurd u15 a
      · exact a
    have u18 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n4
      · exact a
    have u19 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v41 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v11 := by
      rcases c2503 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a n6
    have u26 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u22
    have u27 : ¬v1 := by
      rcases c2474 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u28 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u27
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u28 a
      · exact a
    have u32 : ¬v7 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u26 a
      · exact absurd a u29
      · exact absurd a n5
      · exact absurd a n6
    have u33 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u19
    have u34 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u33 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u29
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd u33 a
  have c2505 : v10 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c119 with a|a
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
    have u4 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v16 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u1
    have u7 : v18 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u1
    have u8 : ¬v17 := by
      rcases c2181 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u4 a
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n13
    have u14 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n11
      · exact a
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u19 : v3 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n13
    have u20 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
    have u21 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n11
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n7
  have c2506 : v14 ∨ ¬v1 ∨ v4 ∨ v6 ∨ v9 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v2 := by
      rcases c2453 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a n13
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v35 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n7
    have u12 : v33 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
    rcases c130 with a|a
    · exact absurd u12 a
    · exact absurd u10 a
  have c2507 : v17 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v19 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v1 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v41 := by
      rcases c2506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v34 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u15
      · exact a
    have u17 : v26 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v24 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    rcases c112 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2509 : v22 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v15 ∨ v20 ∨ v23 ∨ v27 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c40 with a|a
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
    have u6 : ¬v17 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n6
    have u7 : ¬v28 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v21 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u2
    have u9 : v16 := by
      rcases c2507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact a
    rcases c2077 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd u9 a
    · exact absurd a n5
    · exact absurd u10 a
  have c2510 : v23 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v15 ∨ v20 ∨ v22 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v17 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n0
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u13 : v27 := by
      rcases c2509 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v16 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a u14
    have u19 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
    have u20 : v1 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd u5 a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v4 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n7
      · exact a
      · exact absurd a u10
      · exact absurd a n9
    have u23 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
    have u25 : v5 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n8
    have u26 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u27 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u28 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u26 a
    rcases c2233 with a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u29
    · exact absurd a n9
  have c2511 : v16 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v27 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n14
    have u10 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n12
      · exact a
      · exact absurd a u6
      · exact absurd a n14
    have u11 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v2 := by
      rcases c2453 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n13
    have u13 : ¬v30 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u11
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u12
  have c2512 : ¬v1 ∨ v4 ∨ v6 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    have u6 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u3
      · exact absurd a n15
    have u7 : v5 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n14
    have u8 : ¬v2 := by
      rcases c2453 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n14
    have u9 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
    rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a n15
  have c2513 : v24 ∨ ¬v1 ∨ v4 ∨ v6 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v27 := by
      rcases c2511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v28 := by
      rcases c2512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v35 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u9 a
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u12 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u11 a
    rcases c2052 with a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a u4
    · exact absurd a u3
  have c2514 : v11 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v17 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n5
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v20 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u5 a
    have u13 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u5 a
    have u14 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u5 a
    have u15 : v1 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v4 := by
      rcases c2465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v24 := by
      rcases c2513 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd u18 a
    have u21 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n5
      · exact a
      · exact absurd a u20
    have u22 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a u19
      · exact absurd a u20
    have u23 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v2 := by
      rcases c2453 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd u6 a
      · exact absurd a n7
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u9
    · exact absurd a u26
  have c2515 : v16 ∨ ¬v1 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v9 ∨ v22 ∨ v23 ∨ v27 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n9 a
      · exact a
    have u7 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd n9 a
      · exact absurd a n10
    have u8 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u2
    rcases c2169 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2516 : v6 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u11 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u12 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u13 : ¬v7 := by
      rcases c2515 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n10
    have u14 : v40 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a n10
    have u15 : v14 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n11
    have u16 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v17 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n10
    rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd u15 a
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n11
  have c2517 : v10 ∨ v3 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v17 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n6 a
      · exact a
    rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n6 a
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n12
  have c2518 : ¬v14 ∨ v3 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v15 ∨ v17 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2517 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2519 : ¬v31 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
  have c2520 : v40 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
    have u6 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
    rcases c2422 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n4
  have c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    rcases c1839 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2522 : v21 ∨ v3 ∨ v4 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c2518 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v28 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n14
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v16 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u10
    have u12 : v10 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
    rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd u12 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u3
  have c2523 : v11 ∨ v7 ∨ v9 ∨ v15 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v8 := by
      rcases c2514 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u9 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u10 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u12 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v4 := by
      rcases c2474 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u14 : v2 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u15 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v17 := by
      rcases c2522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u12 a
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u1 a
    have u19 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u20 : ¬v13 := by
      rcases c2366 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u11
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v14 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u20
    have u22 : ¬v24 := by
      rcases c2516 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v26 := by
      rcases c1995 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : v28 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n9
    have u25 : v25 := by
      rcases c2181 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd u17 a
      · exact absurd a u22
      · exact a
      · exact absurd a u23
    rcases c117 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c2524 : v11 ∨ v7 ∨ v9 ∨ v15 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c2514 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u8 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u10 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v21 := by
      rcases c2523 with a|a|a|a|a|a|a|a|a|a
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
    have u15 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u16 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u2 a
    have u17 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u18 : ¬v24 := by
      rcases c2516 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v31 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
    have u20 : ¬v30 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
    have u21 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a u11
  have c2525 : v22 ∨ ¬v1 ∨ v2 ∨ v6 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v24 := by
      rcases c2516 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n2
  have c2526 : v22 ∨ v9 ∨ v15 ∨ ¬v16 ∨ ¬v19 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u3 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact a
    rcases c2077 with a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd u3 a
  have c2527 : v22 ∨ v8 ∨ v9 ∨ v15 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v19 := by
      rcases c2504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v16 := by
      rcases c2526 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u9 : v1 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u11 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v2 := by
      rcases c2525 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u9 a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v30 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u20 : v11 := by
      rcases c2524 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v31 := by
      rcases c2519 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u22 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u21
    have u25 : ¬v26 := by
      rcases c1995 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u1 a
    have u27 : v25 := by
      rcases c2181 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd u24 a
      · exact absurd a n5
      · exact a
      · exact absurd a u25
    have u28 : v28 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n8
    rcases c117 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c2528 : ¬v8 ∨ v9 ∨ v15 ∨ v22 ∨ v23 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2514 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  exact ⟨c2484, c2485, c2489, c2490, c2491, c2493, c2499, c2502, c2504, c2516, c2520, c2521, c2526, c2527, c2528⟩
