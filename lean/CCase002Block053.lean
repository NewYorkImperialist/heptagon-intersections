import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2650-2699 of the 2934-step refutation of ccase002: 115 core clauses and 76 earlier-derived ones give 16 more. -/
theorem CCase002_block053
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
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
    (c56 : ¬v14 ∨ ¬v13)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
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
    (c143 : ¬v37 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c157 : ¬v42 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c196 : v43 ∨ ¬v9 ∨ v19 ∨ v44 ∨ v17 ∨ v45 ∨ v8 ∨ v16 ∨ v12 ∨ v1 ∨ v11 ∨ v10 ∨ v5 ∨ v2)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c207 : ¬v31 ∨ v38 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v32 ∨ v30)
    (c210 : v29 ∨ v43 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v37 ∨ ¬v36)
    (c238 : ¬v41 ∨ v48 ∨ v40 ∨ v33 ∨ v47 ∨ v34 ∨ v35 ∨ v42)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c311 : ¬v24 ∨ v31 ∨ v18 ∨ v38 ∨ v30 ∨ v25 ∨ v17 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c319 : ¬v41 ∨ v20 ∨ v32 ∨ v47 ∨ v40 ∨ v34 ∨ v27 ∨ v39 ∨ v48 ∨ v19 ∨ v35 ∨ v46 ∨ v42 ∨ v21)
    (c333 : v13 ∨ v42 ∨ v1 ∨ v39 ∨ v4 ∨ v14 ∨ v41 ∨ ¬v49 ∨ v7 ∨ v8 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c380 : v43 ∨ ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v41 ∨ v48)
    (c385 : ¬v49 ∨ v42 ∨ v1 ∨ v43 ∨ v6 ∨ v7 ∨ v36 ∨ v48)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c399 : v13 ∨ v12 ∨ v48 ∨ v47 ∨ v14 ∨ v7 ∨ ¬v6 ∨ v5)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c493 : ¬v19 ∨ v26 ∨ v24 ∨ v18 ∨ v48 ∨ v25 ∨ v20 ∨ v10 ∨ v13 ∨ v12 ∨ v17 ∨ v46 ∨ v47 ∨ v5)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c523 : v43 ∨ ¬v49 ∨ v42 ∨ v7 ∨ v6 ∨ v41 ∨ v36 ∨ v48)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c952 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c991 : v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48)
    (c1094 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1523 : v33 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48)
    (c1531 : v33 ∨ ¬v3 ∨ v16 ∨ v18 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1820 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31)
    (c1904 : ¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1936 : v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1953 : ¬v23 ∨ v8 ∨ ¬v15 ∨ ¬v20)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2577 : v17 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2755 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v42)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2837 : ¬v29 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2887 : v19 ∨ v20 ∨ ¬v27 ∨ ¬v32)
    (c2898 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2962 : v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40)
    (c3009 : ¬v11 ∨ v3 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v44 ∨ v45 ∨ v46)
    (c3021 : ¬v12 ∨ v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20)
    (c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c3067 : v16 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3070 : ¬v32 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3125 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v20 ∨ v21)
    (c3148 : ¬v10 ∨ v2 ∨ v3 ∨ v6 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46)
    (c3235 : v49)
    (c3236 : ¬v15 ∨ ¬v6 ∨ ¬v8 ∨ v17 ∨ v18 ∨ v24)
    (c3238 : v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v33)
    (c3239 : ¬v3 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v33)
    (c3240 : ¬v25 ∨ ¬v6 ∨ ¬v15 ∨ v17 ∨ v18)
    : (v19 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v24 ∨ v25) ∧ (¬v3 ∨ ¬v6) ∧ (¬v6 ∨ ¬v15 ∨ v17) ∧ (¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v32 ∨ v34) ∧ (¬v37 ∨ v29 ∨ v30) ∧ (¬v24 ∨ ¬v15 ∨ v17) ∧ (v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20 ∨ v33) ∧ (v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24) ∧ (¬v40 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v27) ∧ (v33 ∨ v4 ∨ v6 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v32) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40) ∧ (v19 ∨ ¬v15 ∨ v17) ∧ (¬v5 ∨ v6 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v24) ∧ (¬v31 ∨ ¬v4 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25) ∧ (v3 ∨ ¬v4 ∨ v5 ∨ v17 ∨ v24 ∨ v31) ∧ (¬v10 ∨ ¬v15 ∨ ¬v19) := by
  have c3241 : ¬v6 ∨ v3 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u8 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : v10 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u14
  have c3242 : v32 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v11 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u13 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd n1 a
    · exact absurd a u12
  have c3243 : v19 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v24 ∨ v25 := by
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
    have u5 : v32 := by
      rcases c3242 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u6 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v26 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v3 := by
      rcases c3239 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u6
    rcases c3241 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd u5 a
  have c3244 : v10 ∨ ¬v3 ∨ ¬v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u5 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u6 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    rcases c3118 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3245 : v18 ∨ ¬v6 ∨ ¬v15 ∨ v17 ∨ v24 := by
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
    have u8 : ¬v25 := by
      rcases c3240 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
    have u9 : v19 := by
      rcases c3243 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
    have u10 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u9 a
    have u13 : ¬v8 := by
      rcases c3236 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u14 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u10
      · exact a
    have u15 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
    have u16 : ¬v3 := by
      rcases c3244 with a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n1 a
    have u17 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v11 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v23 := by
      rcases c3009 with a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : v5 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact a
    have u27 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u3
    have u28 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u4
    have u29 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u26 a
    have u30 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd n1 a
    have u31 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u26 a
      · exact absurd n1 a
      · exact a
    have u32 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u33 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u28 a
    have u34 : v41 := by
      rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u33
      · exact absurd a u29
      · exact absurd a u18
      · exact absurd a u30
      · exact absurd a u23
      · exact a
      · exact absurd u1 a
      · exact absurd a u31
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u35 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u32 a
      · exact a
    have u36 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u32 a
      · exact a
    have u37 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u34 a
      · exact a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u7
    · exact absurd a u37
    · exact absurd a u36
    · exact absurd a u6
    · exact absurd a u27
    · exact absurd a u35
    · exact absurd a u33
  have c3246 : ¬v11 ∨ v3 ∨ ¬v6 ∨ v16 ∨ v17 ∨ v20 ∨ v24 ∨ v25 ∨ v39 := by
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
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v23 := by
      rcases c3009 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
    have u11 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v36 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u8
    rcases c143 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c3247 : v25 ∨ v3 ∨ ¬v6 ∨ ¬v15 ∨ v17 ∨ v24 ∨ v39 := by
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
    have u6 : v18 := by
      rcases c3245 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u10 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v11 := by
      rcases c3246 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u12 : v26 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact a
    have u13 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v8 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u12 a
    have u17 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : v38 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
    have u21 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v36 := by
      rcases c3067 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd u22 a
  have c3248 : ¬v25 ∨ v3 ∨ ¬v6 ∨ ¬v15 ∨ v17 := by
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
    have u6 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : v18 := by
      rcases c3240 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
    have u12 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u11 a
    have u15 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd n3 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v36 := by
      rcases c3067 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u23
    have u26 : v30 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u25
      · exact a
      · exact absurd a u24
      · exact absurd u21 a
    have u27 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v38 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u24
      · exact a
    rcases c2869 with a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3249 : v3 ∨ ¬v6 ∨ ¬v15 ∨ v17 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u6 : ¬v25 := by
      rcases c3248 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    have u7 : v18 := by
      rcases c3245 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u10 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
    have u11 : v39 := by
      rcases c3247 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u12 : v32 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
    have u16 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v26 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u6
      · exact a
    rcases c1878 with a|a|a|a|a
    · exact absurd a u17
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd u18 a
  have c3250 : v24 ∨ ¬v6 ∨ ¬v15 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u7 : v3 := by
      rcases c3249 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
    have u8 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u11 : v10 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
    rcases c1188 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u15 a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3251 : ¬v3 ∨ ¬v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
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
    have u7 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u8 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u10 : v10 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
    rcases c1188 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u14 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3252 : v16 ∨ ¬v6 ∨ ¬v15 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v3 := by
      rcases c3251 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v25 := by
      rcases c3248 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    have u3 : v24 := by
      rcases c3250 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v21 := by
      rcases c2577 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
    have u10 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
    have u12 : v32 := by
      rcases c3242 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
    rcases c1448 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd u3 a
  have c3253 : ¬v6 ∨ ¬v15 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u5 : v16 := by
      rcases c3252 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    have u6 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c3240 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
    have u9 : v24 := by
      rcases c3243 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a u8
    have u10 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v32 := by
      rcases c3242 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    have u13 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3254 : ¬v32 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v24 ∨ v25 := by
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
    have u5 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3255 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u5 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    rcases c319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n3
  have c3256 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v32 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v35 := by
      rcases c3255 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    rcases c2755 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
  have c3257 : ¬v16 ∨ ¬v15 ∨ v17 ∨ ¬v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u6 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n3 a
    have u13 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n3 a
    have u14 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u15 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd n3 a
    have u16 : ¬v32 := by
      rcases c3254 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a n4
    have u17 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v41 := by
      rcases c3256 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u15
    have u19 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u15
    have u21 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u20 a
      · exact a
      · exact absurd a u21
    rcases c2760 with a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd u19 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u3
  have c3258 : ¬v37 ∨ v29 ∨ v30 := by
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
    have u5 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2581 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3259 : ¬v24 ∨ ¬v15 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u14 : ¬v16 := by
      rcases c3257 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u11
    have u15 : v21 := by
      rcases c2577 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
    have u16 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd n0 a
    have u20 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a u19
    have u22 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
    have u27 : ¬v5 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u22 a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u2
    have u28 : ¬v12 := by
      rcases c3021 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
    rcases c1815 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3260 : v9 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v30 ∨ v32 ∨ v37 := by
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
    have u8 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u3
      · exact a
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1792 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3261 : v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20 ∨ v33 := by
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
    have u5 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v12 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3021 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c3262 : v33 ∨ ¬v4 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 := by
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
    have u8 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v5 := by
      rcases c3261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u12 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u14 : ¬v10 := by
      rcases c3148 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
    have u16 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v41 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u7
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u17
  have c3263 : v23 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v32 := by
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
    have u8 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : v33 := by
      rcases c3262 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u8
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u16 : v9 := by
      rcases c3260 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u15
    have u17 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
    have u23 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u10 a
    rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u16 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u25
  have c3264 : ¬v33 ∨ v16 ∨ v17 ∨ ¬v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1901 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c3265 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u5 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n0
  have c3266 : ¬v21 ∨ ¬v15 ∨ v17 ∨ v19 ∨ v32 := by
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
    have u8 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u9 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u16 : v23 := by
      rcases c3263 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n4
    have u17 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c3264 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u16 a
    have u19 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v5 := by
      rcases c3261 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u18
    have u21 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u20 a
      · exact absurd u14 a
      · exact a
    have u22 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u14 a
    have u23 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u14 a
    have u24 : ¬v10 := by
      rcases c3148 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u8
    have u26 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
    have u30 : v38 := by
      rcases c207 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u26
    have u31 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u29
      · exact a
    rcases c385 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u31
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u32
    · exact absurd a u7
  have c3267 : ¬v20 ∨ ¬v15 ∨ v19 ∨ v21 ∨ ¬v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1953 with a|a|a|a
    · exact absurd n4 a
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd n0 a
  have c3268 : v32 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 := by
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
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u12 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c386 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u10
  have c3269 : v33 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v32 := by
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
    have u8 : ¬v25 := by
      rcases c3238 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
    have u9 : ¬v6 := by
      rcases c3243 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u8
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : v31 := by
      rcases c3268 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n0
    have u12 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u16 : v9 := by
      rcases c3260 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a u15
    have u17 : v38 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u10
    have u18 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact a
    rcases c385 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u7
  have c3270 : ¬v33 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v9 := by
      rcases c3260 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
    have u14 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n7
    have u19 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u13 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u21
  have c3271 : v16 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v32 := by
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
    have u8 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u9 : ¬v21 := by
      rcases c3266 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : v20 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u13 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v23 := by
      rcases c3267 with a|a|a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u9
      · exact a
    have u15 : ¬v33 := by
      rcases c3270 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u8
    have u16 : v26 := by
      rcases c3269 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u8
      · exact a
      · exact absurd a n5
    have u17 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v8 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd u16 a
    have u19 : v34 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n4
    have u20 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v2 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
    rcases c2579 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3272 : v33 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v19 ∨ v32 := by
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
    have u7 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : v16 := by
      rcases c3271 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v21 := by
      rcases c3266 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u13 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u15 : v5 := by
      rcases c3261 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n0
    have u16 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n0
    have u17 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u19 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u21 : ¬v14 := by
      rcases c3125 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u11
    have u22 : ¬v10 := by
      rcases c3148 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u12
    have u24 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u25
    have u28 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u26
    have u29 : ¬v41 := by
      rcases c3255 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u28
      · exact absurd a n5
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u7
    have u30 : v13 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u6
    have u31 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u30 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd u30 a
    · exact absurd a u17
    · exact absurd a u31
  have c3273 : ¬v40 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u7 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v33 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : v7 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
    have u12 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u15 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u12
    have u16 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c52 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c3274 : v18 ∨ ¬v15 ∨ v17 ∨ v19 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u6 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u7 : ¬v21 := by
      rcases c3266 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v4 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v16 := by
      rcases c3271 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v20 := by
      rcases c61 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u12 : v33 := by
      rcases c3272 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u13
    have u16 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u15
    have u17 : ¬v41 := by
      rcases c3255 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u16
    have u18 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
    have u19 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd u18 a
      · exact a
      · exact absurd a u19
    rcases c2760 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd u9 a
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u3
  have c3275 : ¬v33 ∨ ¬v4 ∨ v6 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 := by
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
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u9
    have u12 : v15 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n3
    have u13 : ¬v41 := by
      rcases c3255 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
    have u14 : v26 := by
      rcases c860 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
    have u15 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
    have u16 : v8 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd u14 a
    rcases c40 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c3276 : v34 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u6 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v33 := by
      rcases c3275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n0
    have u9 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c3125 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v13 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a n3
    have u14 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a n0
    have u15 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u14 a
      · exact a
    rcases c385 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u5
  have c3277 : ¬v4 ∨ v6 ∨ v12 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v32 := by
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
    have u7 : ¬v33 := by
      rcases c3275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u9 : v34 := by
      rcases c3276 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v26 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
    have u16 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
    have u19 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a u18
    have u21 : v9 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
    rcases c42 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c3278 : v33 ∨ v4 ∨ v6 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v34 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact a
    have u11 : v35 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c142 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c3279 : v32 ∨ ¬v15 ∨ v17 ∨ v19 := by
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
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u9 : v18 := by
      rcases c3274 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u10 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v21 := by
      rcases c3266 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u12 : ¬v12 := by
      rcases c1904 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u11
    have u13 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u14 : ¬v4 := by
      rcases c3277 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
    have u15 : v33 := by
      rcases c3278 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n0
    have u16 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u17
    have u21 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
    have u22 : ¬v13 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
    have u23 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u20
      · exact a
      · exact absurd a u17
    have u24 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v22 := by
      rcases c3256 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u17
    have u26 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u25 a
      · exact a
    rcases c2962 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd u15 a
    · exact absurd a u6
    · exact absurd a u24
  have c3280 : v12 ∨ v4 ∨ v6 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v24 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u8 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n7 a
    have u11 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u12 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n7 a
      · exact a
    have u13 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n7 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n7 a
      · exact a
    have u15 : ¬v27 := by
      rcases c2887 with a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n7 a
    have u16 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v18 := by
      rcases c3261 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
    have u18 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
    have u21 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u16 a
    have u24 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u17 a
    have u25 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd n7 a
      · exact absurd a u9
      · exact absurd a u19
      · exact a
      · exact absurd a u18
    have u26 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u20
      · exact a
    have u29 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u13
    have u30 : v7 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u26
      · exact a
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u7
    have u31 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : ¬v16 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u33
      · exact a
      · exact absurd a u23
      · exact absurd a u22
    have u35 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u33
      · exact absurd a u24
      · exact absurd a n6
    have u36 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u31
      · exact absurd a u34
      · exact absurd a u20
      · exact absurd a u3
      · exact a
    rcases c18 with a|a|a
    · exact absurd u30 a
    · exact absurd u36 a
    · exact absurd u35 a
  have c3281 : v20 ∨ v4 ∨ ¬v15 ∨ v17 ∨ v19 := by
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
    have u5 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u6 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u7 : v32 := by
      rcases c3279 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v27 := by
      rcases c2887 with a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd u7 a
    have u12 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : v12 := by
      rcases c3280 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd u7 a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a u10
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u15 a
      · exact a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u16
  have c3282 : v4 ∨ ¬v15 ∨ v17 ∨ v19 := by
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
    have u8 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u9 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : v32 := by
      rcases c3279 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
    have u20 : v20 := by
      rcases c3281 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u20 a
    have u23 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
    have u24 : ¬v25 := by
      rcases c3238 with a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n3
      · exact a
      · exact absurd a u11
    have u25 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u18
      · exact a
      · exact absurd a u17
    have u26 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u19
      · exact a
    have u29 : v7 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u26
      · exact a
      · exact absurd a u8
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u7
    have u30 : ¬v26 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u31 : v12 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u29 a
      · exact a
      · exact absurd a n3
      · exact absurd a u30
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u32 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u31 a
    have u35 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u31 a
    have u36 : v5 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd u31 a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u33
      · exact absurd a u21
      · exact absurd a n3
    have u37 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u32
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u3
      · exact a
    rcases c729 with a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd u37 a
    · exact absurd a u35
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a u3
    · exact absurd a u4
  have c3283 : ¬v20 ∨ ¬v15 ∨ v17 ∨ v19 := by
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
    have u8 : v4 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u11 : v32 := by
      rcases c3279 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
    have u20 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u21 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u22 : ¬v25 := by
      rcases c3238 with a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n3
      · exact a
      · exact absurd a u12
    have u23 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u18
      · exact a
      · exact absurd a u17
    have u24 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u19
      · exact a
    have u27 : v7 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u24
      · exact a
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u7
    have u28 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u8 a
    have u29 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u27 a
    have u30 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u28
      · exact a
      · exact absurd a n2
      · exact absurd a u10
    have u31 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd u8 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c47 with a|a
    · exact absurd u31 a
    · exact absurd u30 a
  have c3284 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
  have c3285 : v19 ∨ ¬v15 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u7 : ¬v24 := by
      rcases c3259 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : v4 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    have u9 : ¬v20 := by
      rcases c3283 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    have u10 : v32 := by
      rcases c3279 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    have u11 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
    have u17 : ¬v27 := by
      rcases c2887 with a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact a
      · exact absurd u10 a
    have u18 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
    have u19 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u7
    have u23 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
    have u24 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1511 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u9
  have c3286 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v29 ∨ v30 ∨ v32 := by
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
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v31 := by
      rcases c1901 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u9 : v15 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v19 := by
      rcases c3285 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
    have u15 : ¬v6 := by
      rcases c3253 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u16
    rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u14 a
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u5
  have c3287 : ¬v5 ∨ v6 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u8 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : v4 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
    have u12 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c3148 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n7
    have u15 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v25 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u23
    have u26 : ¬v23 := by
      rcases c3286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
    have u27 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u7
    have u28 : v38 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u22
    rcases c157 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c3288 : ¬v31 ∨ ¬v4 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u16
    have u18 : ¬v23 := by
      rcases c3286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u19 : v38 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u15
    have u20 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v36 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
      · exact a
    have u22 : v7 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u20
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u7
    have u23 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n1 a
    have u24 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u22 a
    have u25 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u3
      · exact a
    rcases c2579 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3289 : v3 ∨ ¬v4 ∨ v5 ∨ v17 ∨ v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u5 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c47 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c3290 : ¬v10 ∨ ¬v15 ∨ ¬v19 := by
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
    have u5 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v20 := by
      rcases c70 with a|a|a
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
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a u7
      · exact a
    rcases c1878 with a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd u9 a
  exact ⟨c3243, c3251, c3253, c3256, c3258, c3259, c3261, c3265, c3273, c3278, c3284, c3285, c3287, c3288, c3289, c3290⟩
