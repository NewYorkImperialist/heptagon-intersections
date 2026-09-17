import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1500-1549 of the 2915-step refutation of ccase001: 114 core clauses and 56 earlier-derived ones give 14 more. -/
theorem CCase001_block030
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
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
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c111 : ¬v27 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c128 : ¬v34 ∨ ¬v29)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c170 : ¬v46 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c276 : v43 ∨ ¬v37 ∨ v31 ∨ v44 ∨ v30 ∨ v45 ∨ v36 ∨ v38)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c297 : v11 ∨ v4 ∨ v48 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v5 ∨ v47)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c299 : ¬v34 ∨ v41 ∨ v33 ∨ v38 ∨ v47 ∨ v42 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v24 ∨ v26 ∨ v48 ∨ v49)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c429 : ¬v40 ∨ v12 ∨ v13 ∨ v47 ∨ v33 ∨ v41 ∨ v45 ∨ v11 ∨ v39 ∨ v31 ∨ v38 ∨ v5 ∨ v32 ∨ v48)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c472 : v20 ∨ v11 ∨ v14 ∨ v17 ∨ v10 ∨ v19 ∨ v7 ∨ v6 ∨ ¬v13 ∨ v12 ∨ v3 ∨ v47 ∨ v48 ∨ v49)
    (c478 : ¬v33 ∨ v40 ∨ v32 ∨ v41 ∨ v26 ∨ v25 ∨ v27 ∨ v34)
    (c523 : ¬v26 ∨ v19 ∨ v30 ∨ v20 ∨ v25 ∨ v33 ∨ v23 ∨ v16 ∨ v12 ∨ v27 ∨ v13 ∨ v24 ∨ v11 ∨ v32)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c984 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1463 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1535 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v19)
    (c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1541 : v20 ∨ v6 ∨ v13 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1542 : v7 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v19 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1581 : ¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1695 : ¬v23 ∨ v7 ∨ v8 ∨ v14 ∨ v41 ∨ v42 ∨ v49)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1801 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1878 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c1975 : ¬v19 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v14 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1977 : v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49)
    (c1979 : v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c2011 : v34 ∨ v6 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2049 : v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2071 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v45 ∨ ¬v46 ∨ v47)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2085 : ¬v27 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v33 ∨ v38 ∨ v40 ∨ v41 ∨ v47)
    (c2091 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2093 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2106 : v22 ∨ v1 ∨ v4 ∨ v5 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c2117 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2121 : v18 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c2124 : ¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v20)
    (c2125 : v4 ∨ ¬v2 ∨ v9 ∨ v11 ∨ v47 ∨ v48 ∨ v49)
    (c2126 : ¬v20 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10)
    : (v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48) ∧ (v47 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v48 ∨ v49) ∧ (v14 ∨ v6 ∨ v8 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ v5 ∨ ¬v6 ∨ v7 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49) ∧ (v14 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49) ∧ (v34 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (v11 ∨ ¬v2 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v7 ∨ ¬v2 ∨ ¬v11 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v2 ∨ v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v14 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v8 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) := by
  have c2127 : v15 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v16 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd n5 a
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v40 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v34 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    rcases c429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n14
  have c2128 : ¬v15 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v40 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v27 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u10
      · exact a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    rcases c429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a n10
  have c2129 : v9 ∨ ¬v2 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v4 := by
      rcases c2125 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
    have u12 : v10 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
    have u13 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v20 := by
      rcases c2126 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd u12 a
    have u17 : ¬v15 := by
      rcases c2128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v21 := by
      rcases c2127 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v27 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v40 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u24 a
      · exact a
    have u30 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u24 a
    rcases c429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u30
    · exact absurd a u26
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a n4
  have c2130 : v38 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n9 a
      · exact a
    rcases c429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n12
  have c2131 : ¬v40 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v40 := by
      rcases c2131 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u7
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    rcases c523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u4
  have c2133 : v47 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
    have u4 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v21 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v40 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v35 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n10
    have u13 : v32 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n10
    rcases c141 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2134 : v6 ∨ ¬v2 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v5 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v4 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n9
    rcases c20 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n1 a
  have c2135 : v14 ∨ v6 ∨ v8 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v21 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u3
  have c2136 : v11 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v12 := by
      rcases c2134 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
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
    have u6 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u8 : v34 := by
      rcases c2135 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n11
    have u15 : ¬v1 := by
      rcases c1535 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n7
    have u16 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n11
    rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd u17 a
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n11
  have c2137 : v7 ∨ ¬v2 ∨ v11 ∨ v13 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v6 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n3
    have u5 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n0
    rcases c62 with a|a|a
    · exact absurd u4 a
    · exact absurd u1 a
    · exact absurd u5 a
  have c2138 : v3 ∨ ¬v2 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n9
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v23 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u11 : v22 := by
      rcases c2106 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact a
    have u15 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u14
  have c2139 : v20 ∨ ¬v2 ∨ v7 ∨ v11 ∨ ¬v13 ∨ v15 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u5 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v3 := by
      rcases c1468 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n0
    have u7 : ¬v6 := by
      rcases c2138 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v21 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
    have u9 : v17 := by
      rcases c472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c94 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c2140 : v13 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v34 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u7 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n3 a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n7
  have c2141 : v20 ∨ ¬v2 ∨ v7 ∨ v11 ∨ v15 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v13 := by
      rcases c2139 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v16 := by
      rcases c2137 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v6 := by
      rcases c2140 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u8 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u9 : ¬v12 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd u6 a
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n2
  have c2142 : v13 ∨ v5 ∨ ¬v6 ∨ v7 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n3
    have u2 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    rcases c440 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
  have c2143 : v11 ∨ ¬v2 ∨ ¬v6 ∨ v7 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a n5
    have u8 : v13 := by
      rcases c2142 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u8 a
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a n5
    have u14 : ¬v20 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v19 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a u15
    rcases c1421 with a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd u20 a
  have c2144 : v21 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v9 ∨ ¬v13 ∨ v15 ∨ v16 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u2 : v5 := by
      rcases c1811 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
    have u3 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u4 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v3 := by
      rcases c1468 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n8
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a u12
    rcases c1421 with a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd u13 a
  have c2145 : v14 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c1975 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a u8
    rcases c1421 with a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd u9 a
  have c2146 : v20 ∨ ¬v2 ∨ v7 ∨ v11 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c2143 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v19 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v13 := by
      rcases c2144 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v14 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u2 a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u5
  have c2147 : v13 ∨ v1 ∨ v3 ∨ v6 ∨ ¬v7 ∨ ¬v9 ∨ v11 ∨ v20 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n14
      · exact a
    have u5 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n5 a
      · exact absurd u4 a
      · exact a
    have u6 : v27 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact a
    have u11 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
  have c2148 : ¬v7 ∨ ¬v2 ∨ v11 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u5 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u6 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a n4
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n4
    have u12 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v13 := by
      rcases c2147 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u6 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u16 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u17
  have c2149 : ¬v13 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v19 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c2150 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c1878 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c272 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
  have c2151 : v34 ∨ v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v27 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c2150 with a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u2
    have u4 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u3 a
    rcases c2117 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2153 : v6 ∨ ¬v2 ∨ v11 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v15 := by
      rcases c2146 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v13 := by
      rcases c2149 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u9
    have u12 : v34 := by
      rcases c2151 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v14 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u2 a
    have u16 : v1 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a u9
    have u17 : v5 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    rcases c3 with a|a|a
    · exact absurd u16 a
    · exact absurd n1 a
    · exact absurd u17 a
  have c2154 : v20 ∨ ¬v2 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v7 := by
      rcases c2148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v6 := by
      rcases c2153 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v15 := by
      rcases c2143 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u9 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n3
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n3
    have u14 : v13 := by
      rcases c2142 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u1 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u14 a
      · exact absurd u1 a
      · exact a
    have u19 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u3
    have u20 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u16
    have u21 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u20 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u3
  have c2155 : v10 ∨ ¬v2 ∨ v5 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v20 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v1 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v11 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u8
    have u11 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n9
    have u12 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u6
    have u15 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a u13
    have u16 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u6
  have c2156 : ¬v37 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v35 := by
      rcases c984 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u1
    rcases c1451 with a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
  have c2157 : ¬v13 ∨ ¬v2 ∨ v7 ∨ ¬v9 ∨ ¬v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2156 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v1 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v5 := by
      rcases c2155 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c3 with a|a|a
    · exact absurd u13 a
    · exact absurd n1 a
    · exact absurd u14 a
  have c2158 : ¬v5 ∨ ¬v2 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v4 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
    rcases c20 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
  have c2159 : v34 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
  have c2160 : v27 ∨ v24 ∨ v26 ∨ v31 ∨ ¬v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    rcases c299 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n11
  have c2161 : v14 ∨ v5 ∨ v7 ∨ v12 ∨ v19 ∨ v21 ∨ ¬v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v20 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u8
    have u13 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
    have u14 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n4
      · exact a
    have u17 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2160 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd n6 a
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2162 : v47 ∨ ¬v2 ∨ v7 ∨ v11 ∨ v12 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v20 := by
      rcases c2154 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v6 := by
      rcases c2143 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v13 := by
      rcases c2157 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v5 := by
      rcases c2158 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
    have u12 : ¬v34 := by
      rcases c2161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n6
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a n0
  have c2163 : v14 ∨ ¬v2 ∨ v7 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c2154 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v6 := by
      rcases c2143 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v37 := by
      rcases c2156 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v12 := by
      rcases c2162 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u13 a
    have u15 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u13 a
    have u16 : v1 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd u13 a
    · exact absurd a u7
  have c2164 : v7 ∨ ¬v2 ∨ v11 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v20 := by
      rcases c2154 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v14 := by
      rcases c2163 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u2 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u9 a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u14 : ¬v6 := by
      rcases c2143 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v1 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u5
    have u16 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    have u19 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n3
    have u20 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n3
    have u21 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u8
    have u24 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u22
    have u25 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u24 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u21
    · exact absurd a u8
  have c2165 : ¬v14 ∨ v1 ∨ v5 ∨ ¬v9 ∨ ¬v20 ∨ v37 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a n1
    have u10 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v7 := by
      rcases c2164 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u11 a
    have u15 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n7
    have u16 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u12
    have u18 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a n6
    have u19 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u12
  have c2166 : v11 ∨ ¬v2 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v20 := by
      rcases c2154 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v9 := by
      rcases c2129 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v7 := by
      rcases c2164 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u10 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u11 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u12 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n2
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
    have u14 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd u4 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u15
    have u17 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u15
    rcases c42 with a|a|a
    · exact absurd u16 a
    · exact absurd u5 a
    · exact absurd u17 a
  have c2167 : ¬v7 ∨ ¬v2 ∨ ¬v11 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n3
    have u4 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n3
    rcases c49 with a|a|a
    · exact absurd u4 a
    · exact absurd n2 a
    · exact absurd u3 a
  have c2168 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v20 := by
      rcases c1468 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
    have u2 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u3
  have c2169 : ¬v13 ∨ ¬v2 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v3 := by
      rcases c2168 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
    have u11 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n2
    have u15 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n2
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd u1 a
    · exact absurd a u13
    · exact absurd a u14
  have c2170 : v40 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v18 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
    have u10 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1977 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd u9 a
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n13
  have c2171 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c2049 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n9
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u10 : ¬v19 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v20 := by
      rcases c2170 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v10 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u13
    have u16 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n0 a
    have u17 : ¬v26 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd u11 a
    have u18 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a u10
      · exact absurd a u8
    have u19 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v27 := by
      rcases c2085 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u18 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n9
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u19
  have c2172 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v37 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u6
  have c2173 : v21 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v35 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact a
    have u7 : v33 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    rcases c143 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2174 : v3 ∨ ¬v2 ∨ v5 ∨ v8 ∨ v12 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v13 := by
      rcases c2169 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v7 := by
      rcases c2167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v4 := by
      rcases c2171 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u11 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v9 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
    have u13 : ¬v19 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u1 a
    have u15 : v21 := by
      rcases c2173 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v34 := by
      rcases c2135 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v40 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u20 a
      · exact a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u6
  have c2175 : v14 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v8 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c2169 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v11 := by
      rcases c2166 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v7 := by
      rcases c2167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v12 := by
      rcases c2174 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    have u11 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u6
    have u12 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u13 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n5
    have u14 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
    have u19 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
    have u20 : ¬v23 := by
      rcases c1695 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
    have u21 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
    have u22 : ¬v31 := by
      rcases c1801 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u22
  have c2176 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
    have u3 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v35 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
    have u6 : v33 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
    rcases c143 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  exact ⟨c2132, c2133, c2135, c2142, c2145, c2150, c2152, c2159, c2166, c2167, c2169, c2172, c2175, c2176⟩
