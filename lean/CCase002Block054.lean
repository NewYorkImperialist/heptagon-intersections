import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2700-2749 of the 2934-step refutation of ccase002: 136 core clauses and 93 earlier-derived ones give 10 more. -/
theorem CCase002_block054
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
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
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
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
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c195 : v29 ∨ v43 ∨ v44 ∨ v35 ∨ v22 ∨ v42 ∨ ¬v36 ∨ v21 ∨ v15 ∨ v38 ∨ v31 ∨ v16 ∨ v37 ∨ v45)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c210 : v29 ∨ v43 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v37 ∨ ¬v36)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c245 : v36 ∨ ¬v49 ∨ v7 ∨ v6 ∨ v4 ∨ v34 ∨ v42 ∨ v29 ∨ v39 ∨ v35 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c329 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v18 ∨ v4 ∨ v1 ∨ v3 ∨ ¬v11 ∨ v8 ∨ v10 ∨ v12 ∨ v9 ∨ v26)
    (c338 : v21 ∨ v19 ∨ v3 ∨ v18 ∨ v14 ∨ v4 ∨ v7 ∨ v13 ∨ ¬v11 ∨ v12 ∨ v10 ∨ v45 ∨ v46 ∨ v47)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c380 : v43 ∨ ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v41 ∨ v48)
    (c385 : ¬v49 ∨ v42 ∨ v1 ∨ v43 ∨ v6 ∨ v7 ∨ v36 ∨ v48)
    (c399 : v13 ∨ v12 ∨ v48 ∨ v47 ∨ v14 ∨ v7 ∨ ¬v6 ∨ v5)
    (c402 : v43 ∨ v37 ∨ ¬v49 ∨ v22 ∨ v42 ∨ v28 ∨ v35 ∨ v27 ∨ v1 ∨ v2 ∨ v7 ∨ v41 ∨ v44 ∨ v48)
    (c410 : v15 ∨ v16 ∨ v25 ∨ v19 ∨ v17 ∨ v12 ∨ ¬v18 ∨ v11 ∨ v4 ∨ v8 ∨ v3 ∨ v22 ∨ v24 ∨ v5)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c493 : ¬v19 ∨ v26 ∨ v24 ∨ v18 ∨ v48 ∨ v25 ∨ v20 ∨ v10 ∨ v13 ∨ v12 ∨ v17 ∨ v46 ∨ v47 ∨ v5)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c952 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1169 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1273 : ¬v24 ∨ v17 ∨ v18 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c1275 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1298 : v3 ∨ v4 ∨ v7 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1328 : ¬v25 ∨ ¬v15 ∨ v16 ∨ ¬v19 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1380 : v3 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1523 : v33 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1807 : ¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17)
    (c1808 : ¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1820 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1826 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31)
    (c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c1936 : v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2434 : ¬v28 ∨ v3 ∨ v4 ∨ v19 ∨ ¬v21 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2532 : v14 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v21 ∨ v44 ∨ v45 ∨ v46)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2665 : ¬v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19)
    (c2720 : ¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23)
    (c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2962 : v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3032 : ¬v27 ∨ ¬v16 ∨ v17 ∨ ¬v21)
    (c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3125 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v20 ∨ v21)
    (c3235 : v49)
    (c3238 : v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v33)
    (c3243 : v19 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v24 ∨ v25)
    (c3251 : ¬v3 ∨ ¬v6)
    (c3253 : ¬v6 ∨ ¬v15 ∨ v17)
    (c3256 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v32 ∨ v34)
    (c3258 : ¬v37 ∨ v29 ∨ v30)
    (c3259 : ¬v24 ∨ ¬v15 ∨ v17)
    (c3261 : v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c3265 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24)
    (c3273 : ¬v40 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v27)
    (c3278 : v33 ∨ v4 ∨ v6 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v32)
    (c3284 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c3285 : v19 ∨ ¬v15 ∨ v17)
    (c3287 : ¬v5 ∨ v6 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v24)
    (c3288 : ¬v31 ∨ ¬v4 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25)
    (c3289 : v3 ∨ ¬v4 ∨ v5 ∨ v17 ∨ v24 ∨ v31)
    (c3290 : ¬v10 ∨ ¬v15 ∨ ¬v19)
    : (¬v41 ∨ v1 ∨ v6 ∨ v7) ∧ (v33 ∨ ¬v4 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34) ∧ (¬v15) ∧ (¬v6 ∨ ¬v4) ∧ (¬v3 ∨ ¬v2 ∨ v16 ∨ v21 ∨ v22 ∨ v29) ∧ (¬v10 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v16 ∨ v17 ∨ v21) ∧ (v19 ∨ ¬v34) ∧ (v17 ∨ v3 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v19 ∨ v21) ∧ (¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14) ∧ (¬v18 ∨ ¬v2 ∨ v8 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v19 ∨ v21) := by
  have c3291 : v33 ∨ ¬v4 ∨ v12 ∨ ¬v15 ∨ v17 ∨ v32 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
    have u8 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
    have u9 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
    have u10 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c3290 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u12 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v5 := by
      rcases c3287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
    have u16 : ¬v25 := by
      rcases c1328 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v31 := by
      rcases c3288 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u16
    have u18 : v3 := by
      rcases c3289 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u17
    have u19 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    have u20 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    have u21 : ¬v14 := by
      rcases c3125 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u14
    have u22 : ¬v13 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u9
      · exact a
    have u23 : v26 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u15
    have u24 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u24
      · exact a
      · exact absurd a n6
    have u26 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u25 a
      · exact a
    rcases c385 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u6
  have c3292 : ¬v33 ∨ ¬v4 ∨ v5 ∨ v16 ∨ v17 ∨ v21 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u8 : v3 := by
      rcases c3289 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
    have u9 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u10 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u10
    have u12 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v15 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u9
    have u18 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
    have u19 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u20 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    rcases c1872 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd u18 a
    · exact absurd a u21
    · exact absurd a u19
  have c3293 : ¬v4 ∨ v12 ∨ ¬v15 ∨ v17 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u4 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u5 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u6 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u7 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v5 := by
      rcases c3287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
    have u11 : ¬v33 := by
      rcases c3292 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u3
    have u12 : v32 := by
      rcases c3291 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u13 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v10 := by
      rcases c3290 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u19 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u3
    have u20 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n0 a
    have u21 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u20
    have u22 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u22
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u9
      · exact a
    rcases c1872 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u25
  have c3294 : ¬v10 ∨ ¬v15 ∨ ¬v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u9 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u6
      · exact a
    rcases c1878 with a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd u9 a
  have c3295 : ¬v41 ∨ v1 ∨ v6 ∨ v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    rcases c385 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u3
  have c3296 : ¬v3 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v6 := by
      rcases c3251 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u10 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u11 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u12 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v14 := by
      rcases c3125 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v13 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u7
      · exact a
    have u15 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd a n9
    have u16 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v17 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
    have u20 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n6 a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd u19 a
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u18
  have c3297 : v12 ∨ ¬v15 ∨ v17 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u6 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u7 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u9 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v10 := by
      rcases c3294 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u13 : ¬v4 := by
      rcases c3293 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v5 := by
      rcases c3287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
    have u15 : ¬v3 := by
      rcases c3296 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
    have u16 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
    have u17 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
    have u18 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u21
      · exact a
      · exact absurd a u19
    rcases c952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3298 : v34 ∨ ¬v15 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u4 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : v12 := by
      rcases c3297 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    have u8 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact a
    have u12 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u13 : v22 := by
      rcases c1864 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact a
    have u14 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a n0
    have u19 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v35 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
    have u25 : v33 := by
      rcases c3284 with a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u22
    have u26 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u25 a
    rcases c2962 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd u25 a
    · exact absurd a u23
    · exact absurd a u22
  have c3299 : ¬v12 ∨ ¬v3 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u11 : v2 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u9
  have c3300 : v17 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u9 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u10 : v34 := by
      rcases c3298 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u18 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a u18
      · exact a
    have u20 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u21 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u22 : ¬v10 := by
      rcases c3294 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u23 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u8
    have u24 : ¬v12 := by
      rcases c3299 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd u10 a
    have u25 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
    have u26 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u5
    have u27 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u28 : v26 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u27
    have u29 : v8 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd u28 a
    have u30 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : v2 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u33 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u13
    rcases c15 with a|a|a
    · exact absurd u32 a
    · exact absurd u23 a
    · exact absurd u33 a
  have c3301 : ¬v23 ∨ ¬v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : v40 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a n2
    rcases c1383 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3302 : ¬v34 ∨ ¬v4 ∨ v12 ∨ ¬v15 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : v17 := by
      rcases c3300 with a|a
      · exact a
      · exact absurd n3 a
    have u13 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n3 a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v26 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
    have u24 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u25 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u21
    have u26 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u7
    have u27 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v23 := by
      rcases c3301 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u25
    have u29 : v9 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u22
      · exact a
      · exact absurd a u14
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u30 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : v24 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a u28
      · exact a
      · exact absurd a n4
    have u32 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u31 a
    rcases c1217 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u25
  have c3303 : v33 ∨ ¬v4 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u6 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u11 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n7
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a n2
  have c3304 : ¬v11 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
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
    have u4 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v17 := by
      rcases c3300 with a|a
      · exact a
      · exact absurd n1 a
    rcases c1932 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd u5 a
  have c3305 : ¬v33 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : v17 := by
      rcases c3300 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v11 := by
      rcases c3304 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u20 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u6
    have u21 : ¬v25 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u8
    have u23 : ¬v6 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u20
    have u25 : v26 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u21
      · exact a
      · exact absurd a u20
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u24
    have u26 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v41 := by
      rcases c3256 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u6
    have u30 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u21
    have u31 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u29
      · exact absurd a u6
    rcases c49 with a|a
    · exact absurd u30 a
    · exact absurd u31 a
  have c3306 : ¬v12 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v17 := by
      rcases c3300 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v33 := by
      rcases c3305 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u7 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v25 := by
      rcases c3238 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u5
    have u11 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u1
    have u12 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u11 a
    rcases c593 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u13
  have c3307 : v34 ∨ v3 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v4 := by
      rcases c3303 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v1 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : v32 := by
      rcases c1298 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
    have u23 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u11
    have u24 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a n9
      · exact absurd a u21
      · exact a
      · exact absurd a u11
    have u25 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v6 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u25
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u7
    have u27 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u19
    have u28 : v22 := by
      rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd u1 a
      · exact a
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u7
    have u29 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v15 := by
      rcases c1805 with a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
    have u32 : v17 := by
      rcases c3243 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u26 a
      · exact a
      · exact absurd a n4
      · exact absurd a u30
      · exact absurd a n8
    have u33 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u32 a
    have u34 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u33
      · exact absurd u32 a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a n8
    have u35 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u18
      · exact a
      · exact absurd a u33
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u14
    rcases c42 with a|a
    · exact absurd u35 a
    · exact absurd u34 a
  have c3308 : ¬v17 ∨ ¬v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u7 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v12 := by
      rcases c3306 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v33 := by
      rcases c3305 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v11 := by
      rcases c3304 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v25 := by
      rcases c3238 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u12
    have u15 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v34 := by
      rcases c3307 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u12
    have u20 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v4 := by
      rcases c3302 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u14
    rcases c1298 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3309 : ¬v15 := by
    by_contra hc
    have u1 : v17 := by
      rcases c3300 with a|a
      · exact a
      · exact absurd hc a
    rcases c3308 with a|a
    · exact absurd u1 a
    · exact absurd hc a
  have c3310 : ¬v18 ∨ v12 ∨ ¬v17 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u10 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n5 a
    have u12 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u14 : ¬v23 := by
      rcases c1423 with a|a|a|a
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a u10
      · exact a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v26 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v9 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
    have u21 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v1 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u10
    have u24 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
    rcases c1826 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3311 : ¬v25 ∨ v18 ∨ v19 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    rcases c221 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
  have c3312 : v12 ∨ v4 ∨ ¬v17 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n5 a
    have u11 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v18 := by
      rcases c3310 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
    have u14 : ¬v25 := by
      rcases c3311 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
    have u16 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
    have u17 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u16 a
      · exact a
    have u24 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u16 a
      · exact a
    have u25 : ¬v1 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : v21 := by
      rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v24 := by
      rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u15
    have u28 : ¬v28 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u26 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
    have u29 : v22 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u7
      · exact a
      · exact absurd a u23
    rcases c101 with a|a
    · exact absurd u29 a
    · exact absurd u27 a
  have c3313 : v18 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n5
    rcases c3311 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c3314 : ¬v17 ∨ v4 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : v12 := by
      rcases c3312 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u13 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : v18 := by
      rcases c3313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u19 a
    have u21 : ¬v23 := by
      rcases c1423 with a|a|a|a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u20
      · exact a
    have u22 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
    have u23 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
    have u24 : v6 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u15
    have u25 : v1 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u16
    rcases c4 with a|a|a
    · exact absurd u22 a
    · exact absurd u25 a
    · exact absurd u24 a
  have c3315 : ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c3251 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u6 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v16 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v18 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u7
    rcases c1273 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
  have c3316 : ¬v12 ∨ v4 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n4 a
    have u15 : ¬v17 := by
      rcases c3314 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v6 := by
      rcases c3315 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd n4 a
    have u19 : v5 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v16 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
    have u23 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u15
      · exact a
    have u24 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u23 a
    rcases c1220 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd u22 a
    · exact absurd a u24
    · exact absurd a u25
  have c3317 : v6 ∨ v4 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : v24 := by
      rcases c3278 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v13 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a n2
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u11 a
    rcases c2665 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u7 a
    · exact absurd a n4
  have c3318 : ¬v26 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v32 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3319 : ¬v26 ∨ v17 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    rcases c3318 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c3320 : ¬v16 ∨ ¬v5 ∨ ¬v6 ∨ v7 ∨ ¬v18 ∨ v20 ∨ v26 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v27 := by
      rcases c1804 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v13 := by
      rcases c1808 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
    have u10 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n7 a
      · exact a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n7 a
      · exact a
    have u14 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n7 a
    have u15 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n7 a
      · exact a
    have u16 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u17 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
    have u18 : ¬v14 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u8
    have u19 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v12 := by
      rcases c3316 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd n7 a
    have u21 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v28 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
    have u23 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u19
      · exact a
    have u24 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u17
    have u26 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u25 a
      · exact a
    rcases c480 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u11
  have c3321 : v4 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v17 := by
      rcases c3314 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
    have u14 : ¬v26 := by
      rcases c3319 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u15 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v12 := by
      rcases c3316 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
    have u17 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v6 := by
      rcases c3317 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
    have u22 : ¬v16 := by
      rcases c3320 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd n3 a
    have u23 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u13
    rcases c1915 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u3
  have c3322 : ¬v6 ∨ ¬v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c3251 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u8 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v7 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
    rcases c32 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u12 a
  have c3323 : v17 ∨ v5 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : v4 := by
      rcases c3321 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u15 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v18 := by
      rcases c3261 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
    have u17 : ¬v26 := by
      rcases c3319 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
    have u18 : v12 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : v16 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u23
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u25 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u16 a
    have u26 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd u24 a
      · exact absurd a n0
    have u27 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u28 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a n2
      · exact a
      · exact absurd a u26
      · exact absurd a u17
    have u29 : v23 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd u24 a
      · exact absurd a u27
      · exact a
    rcases c106 with a|a
    · exact absurd u29 a
    · exact absurd u28 a
  have c3324 : v5 ∨ v19 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : v4 := by
      rcases c3321 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
    have u10 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v17 := by
      rcases c3323 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
    have u16 : v18 := by
      rcases c3261 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
    have u17 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u18 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u19 : ¬v23 := by
      rcases c1423 with a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u18
      · exact a
    have u20 : ¬v26 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v12 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u22 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
    rcases c2579 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3325 : v16 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := c3309
    have u5 : ¬v23 := by
      rcases c1423 with a|a|a|a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
    have u6 : v9 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n0
  have c3326 : ¬v21 ∨ v3 ∨ v6 ∨ ¬v16 ∨ v20 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n5 a
    have u11 : v4 := by
      rcases c3321 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd n5 a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n5 a
    have u14 : v5 := by
      rcases c3324 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd n5 a
    have u15 : ¬v27 := by
      rcases c3032 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd n0 a
    have u16 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    have u17 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u10
    have u18 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u11 a
    have u20 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u14 a
      · exact absurd u11 a
      · exact a
    have u21 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u20
    have u23 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u21
    have u24 : v28 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u22
    have u25 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u24 a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd n3 a
    · exact absurd a u7
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u21
  have c3327 : v20 ∨ v19 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := c3309
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : v4 := by
      rcases c3321 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
    have u9 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v5 := by
      rcases c3324 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
    have u11 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u14 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
    have u15 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u3
    have u16 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u18 : v16 := by
      rcases c3325 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd n2 a
    have u19 : ¬v21 := by
      rcases c3326 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd n2 a
    have u20 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u19
    have u22 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u5
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u20
    have u23 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u22 a
      · exact a
    rcases c480 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u13
  have c3328 : ¬v16 ∨ v19 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u15 : v20 := by
      rcases c3327 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u11
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd n0 a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n0 a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u14
    have u24 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a u22
      · exact absurd a u21
      · exact a
    have u26 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u27 : v23 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact absurd a u23
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u15 a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a u29
    have u31 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a u16
      · exact a
    have u32 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u30 a
    have u34 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u30 a
    have u35 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u30 a
    have u36 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u31 a
      · exact a
    have u37 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u34
      · exact absurd a u35
      · exact absurd a u32
      · exact absurd a u4
      · exact absurd a u5
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u36
    · exact absurd a u9
    · exact absurd a u33
    · exact absurd a u37
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u23
  have c3329 : v2 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v30 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
    have u7 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a n3
    have u11 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u12 : v3 := by
      rcases c1004 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u10
    have u13 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    rcases c3118 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3330 : ¬v9 ∨ ¬v2 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
    have u15 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
    have u17 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
    have u19 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
    have u23 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u7
    have u24 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u21
    rcases c3028 with a|a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3331 : ¬v3 ∨ ¬v2 ∨ v16 ∨ v21 ∨ v22 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := c3309
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u6 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u8 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
    have u9 : ¬v8 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
    have u12 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
    rcases c148 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c3332 : ¬v10 ∨ v3 ∨ v4 ∨ v7 ∨ v9 ∨ v16 ∨ v17 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3333 : v17 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : v2 := by
      rcases c3329 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
    have u12 : ¬v9 := by
      rcases c3330 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n10
    have u13 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n3 a
    have u16 : ¬v3 := by
      rcases c3331 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n6
    have u17 : v1 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u8
    have u19 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u17 a
      · exact absurd u11 a
      · exact a
    have u20 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd u18 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3334 : v9 ∨ ¬v2 ∨ v3 ∨ v18 ∨ v19 ∨ v25 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v1 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u10 a
      · exact a
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd a n3
    · exact absurd a n4
  have c3335 : v19 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
    have u15 : ¬v16 := by
      rcases c3328 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u16 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
    have u17 : v20 := by
      rcases c3327 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u18 : ¬v23 := by
      rcases c1423 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u15
      · exact a
    have u19 : v17 := by
      rcases c3333 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u20 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u19 a
    have u21 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u17 a
    have u22 : v2 := by
      rcases c3329 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
    have u23 : ¬v3 := by
      rcases c3331 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u7
    have u24 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v9 := by
      rcases c3334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u8
    have u26 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u29 : ¬v4 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u23
      · exact a
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u8
  have c3336 : v17 ∨ v3 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v19 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v4 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n7
      · exact a
    have u11 : v18 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a n0
    have u12 : ¬v24 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a n7
    have u13 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u12
    have u14 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
    have u21 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : v38 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u22
    have u24 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u19
      · exact a
    have u28 : v8 := by
      rcases c410 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u26
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n2
    have u29 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : v2 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u29
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u31 : v1 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u30 a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u32 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u31 a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u30 a
      · exact absurd u31 a
      · exact a
    rcases c245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u1 a
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3337 : ¬v31 ∨ v5 ∨ v12 ∨ ¬v17 ∨ ¬v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u9 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1100 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3338 : v33 ∨ ¬v2 ∨ v8 ∨ v12 ∨ v13 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u11 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u12 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n7
      · exact a
    have u14 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n5 a
    have u15 : ¬v31 := by
      rcases c3337 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n7
    have u16 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a u13
    have u18 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
    have u19 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u17 a
      · exact a
    have u24 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a u9
    have u25 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
    have u26 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u9
    have u27 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u13
    have u29 : ¬v36 := by
      rcases c195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u27
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u4
    have u30 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u28 a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u30
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u20
  have c3339 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v7 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
    rcases c23 with a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd n0 a
  have c3340 : ¬v18 ∨ ¬v2 ∨ v8 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v19 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n0 a
    have u10 : ¬v6 := by
      rcases c3339 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n8
      · exact a
    have u13 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u12
    have u14 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a u12
    have u15 : ¬v31 := by
      rcases c3337 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd n7 a
      · exact absurd n0 a
      · exact absurd a n8
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v33 := by
      rcases c3338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a u16
    have u18 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
    have u23 : ¬v28 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
    rcases c3256 with a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u12
  exact ⟨c3295, c3303, c3309, c3322, c3331, c3332, c3335, c3336, c3339, c3340⟩
