import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1800-1849 of the 2934-step refutation of ccase002: 126 core clauses and 79 earlier-derived ones give 21 more. -/
theorem CCase002_block036
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v13)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c93 : v20 ∨ v15 ∨ v17 ∨ v19 ∨ v18 ∨ v16)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
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
    (c120 : ¬v27 ∨ ¬v28)
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
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c146 : ¬v40 ∨ ¬v36)
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
    (c166 : ¬v43 ∨ ¬v46)
    (c167 : ¬v47 ∨ ¬v43)
    (c171 : ¬v44 ∨ ¬v46)
    (c172 : ¬v44 ∨ ¬v47)
    (c175 : ¬v45 ∨ ¬v46)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c182 : ¬v47 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c229 : ¬v41 ∨ v48 ∨ v40 ∨ v35 ∨ v34 ∨ v42 ∨ v33 ∨ v49)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c256 : ¬v47 ∨ v41 ∨ v46 ∨ v5 ∨ v6 ∨ v4 ∨ v40 ∨ v48)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c282 : ¬v39 ∨ v43 ∨ v33 ∨ v26 ∨ v46 ∨ v45 ∨ v32 ∨ v37 ∨ v29 ∨ v38 ∨ v25 ∨ v40 ∨ v24 ∨ v36)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c344 : v36 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v43 ∨ v30 ∨ v38 ∨ v29)
    (c347 : ¬v47 ∨ v40 ∨ v46 ∨ v48 ∨ v39 ∨ v6 ∨ v4 ∨ v5)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c408 : ¬v47 ∨ v41 ∨ v46 ∨ v5 ∨ v39 ∨ v48 ∨ v6 ∨ v40)
    (c432 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v28 ∨ v42)
    (c453 : ¬v4 ∨ v5 ∨ v45 ∨ v12 ∨ v3 ∨ v10 ∨ v11 ∨ v46)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c499 : ¬v38 ∨ v31 ∨ v46 ∨ v44 ∨ v37 ∨ v30 ∨ v39 ∨ v45)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c526 : v26 ∨ v44 ∨ v3 ∨ v18 ∨ v2 ∨ v46 ∨ v45 ∨ v5 ∨ v24 ∨ v25 ∨ v12 ∨ v9 ∨ ¬v4 ∨ v11)
    (c533 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v34 ∨ v29 ∨ v28 ∨ v22)
    (c543 : ¬v41 ∨ v34 ∨ v49 ∨ v20 ∨ v19 ∨ v33 ∨ v48 ∨ v27 ∨ v42 ∨ v21 ∨ v29 ∨ v43 ∨ v40 ∨ v36)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1388 : ¬v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28)
    (c1401 : ¬v30 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v37 ∨ v38 ∨ v39)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c1962 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c1988 : ¬v23 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v26 ∨ v30 ∨ v31 ∨ v33)
    (c2004 : v14 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2062 : v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v43 ∨ v44 ∨ v49)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2169 : ¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45)
    (c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2176 : v26 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26)
    (c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20)
    (c2229 : ¬v17 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2250 : ¬v1 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v49)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v18 ∨ v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49)
    (c2319 : ¬v30 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v49)
    (c2345 : v15 ∨ ¬v3 ∨ v47 ∨ v48 ∨ v49)
    (c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2359 : ¬v15 ∨ v47 ∨ v48 ∨ v49)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2370 : v17 ∨ v47 ∨ v48 ∨ v49)
    (c2371 : ¬v38 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    : (¬v21 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24) ∧ (v16 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49) ∧ (¬v19 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v17 ∨ v23) ∧ (¬v1 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49) ∧ (v21 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44) ∧ (¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33) ∧ (v47 ∨ v48 ∨ v49) ∧ (v16 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v33 ∨ v48 ∨ v49) ∧ (¬v38 ∨ ¬v32 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v25 ∨ v16 ∨ ¬v17 ∨ v18 ∨ ¬v21) ∧ (¬v32 ∨ v6 ∨ v13 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v33 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49) ∧ (v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v29 ∨ v33 ∨ v49) ∧ (v23 ∨ ¬v1 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ ¬v40 ∨ v44 ∨ v49) ∧ (v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48) ∧ (v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v33 ∨ v49) ∧ (v21 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49) := by
  have c2372 : ¬v21 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c2373 : v16 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact a
    have u2 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n8 a
    have u3 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : v29 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
    rcases c2268 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2374 : ¬v30 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n1
    have u5 : v13 := by
      rcases c2176 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v37 := by
      rcases c2319 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n10
    have u19 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u16
    have u20 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n10
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u20
  have c2375 : ¬v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u12 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v20 := by
      rcases c1048 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    have u22 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd n0 a
    have u24 : ¬v38 := by
      rcases c2371 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u25 : ¬v30 := by
      rcases c2374 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u26 : v29 := by
      rcases c2062 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
    have u27 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u30 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u31 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u30
    have u32 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u33 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u32
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n1
      · exact a
    have u34 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u22
    have u35 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u33 a
    have u36 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u31 a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u35
    · exact absurd a n1
    · exact absurd a u24
    · exact absurd a u36
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u32
  have c2376 : v38 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u12 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v4 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
    have u14 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u15 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd n1 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
  have c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2233 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
  have c2378 : v21 ∨ v19 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c2375 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v7 := by
      rcases c2376 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n9
    have u13 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u12
    have u14 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
    have u15 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u16
  have c2379 : v21 ∨ v19 ∨ v23 ∨ v26 ∨ v28 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v22 := by
      rcases c2375 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v33 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
    have u21 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
    have u22 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u22
    have u24 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
    have u25 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
    have u26 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u27 : v20 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    have u28 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u26
    rcases c75 with a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u4 a
  have c2380 : v21 ∨ v19 ∨ v23 ∨ v26 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v22 := by
      rcases c2375 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v38 := by
      rcases c2379 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v1 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
    have u12 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    rcases c1839 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n7
  have c2381 : ¬v19 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v17 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u3 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u1
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
  have c2382 : v1 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v2 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
    have u17 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v19 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a u1
    have u19 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v16 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    rcases c2070 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u19
  have c2383 : ¬v26 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v20 := by
      rcases c1048 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
    have u15 : ¬v19 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a u2
    have u16 : v1 := by
      rcases c2382 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
    have u18 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
    rcases c1483 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n1
  have c2384 : v23 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v22 := by
      rcases c2375 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v19 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n0
    have u14 : ¬v26 := by
      rcases c2383 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : v28 := by
      rcases c2380 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v20 := by
      rcases c1048 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd u15 a
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
    have u21 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
    have u22 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
    have u23 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
    rcases c1483 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd u7 a
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a n1
  have c2385 : ¬v20 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
  have c2386 : ¬v1 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1483 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2387 : v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v22 := by
      rcases c2375 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v23 := by
      rcases c2384 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    have u11 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v13 := by
      rcases c2229 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v20 := by
      rcases c2385 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u7
    have u23 : ¬v1 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
    have u24 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u1
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
    have u25 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u24 a
    have u30 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u24 a
    have u31 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u20
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u25
    have u32 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u30
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u33 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u34 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u32
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u35 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u33
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n1
      · exact a
    have u36 : v36 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u34
      · exact absurd u24 a
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u25
    rcases c146 with a|a
    · exact absurd u35 a
    · exact absurd u36 a
  have c2388 : v1 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v21 := by
      rcases c2387 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u7 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u9 : v13 := by
      rcases c2297 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v46 := by
      rcases c2004 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v2 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
    have u19 : ¬v22 := by
      rcases c2375 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : v23 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
    have u27 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u23
    rcases c1988 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u21
  have c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u4 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
    rcases c2141 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1239 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n4
  have c2391 : v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v21 := by
      rcases c2387 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v15 := by
      rcases c2359 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v17 := by
      rcases c2370 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u8 : v13 := by
      rcases c2297 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v1 := by
      rcases c2388 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v3 := by
      rcases c2345 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u15 : v46 := by
      rcases c2004 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
    have u20 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
    have u21 : v7 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u7
    have u22 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u18
    have u25 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u24
    have u26 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a n0
    have u27 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a n0
      · exact a
    have u28 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u27 a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u20
  have c2392 : ¬v21 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u4
  have c2393 : v48 ∨ ¬v1 ∨ ¬v2 ∨ v8 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u6 : ¬v14 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v41 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
    have u10 : v39 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    rcases c159 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c2394 : ¬v26 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v29 ∨ v30 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v18 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u2 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
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
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u11 : ¬v21 := by
      rcases c2392 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v13 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u13 : ¬v2 := by
      rcases c2393 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n13
    have u14 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u13
    have u16 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a u14
    rcases c152 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2397 : ¬v26 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ v23 ∨ v29 ∨ v30 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n13
    have u10 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n13
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n13
    have u12 : v20 := by
      rcases c2394 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v17 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u1
    have u14 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u15 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u14 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n12
    · exact absurd a u9
    · exact absurd a u17
  have c2398 : v16 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u10 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u11 : v30 := by
      rcases c2397 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v37 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u9
      · exact a
    have u15 : v20 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n6
      · exact a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u12
    have u16 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u12
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n6
    have u17 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact a
    rcases c1494 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u6
  have c2399 : ¬v26 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ v23 ∨ v29 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v10 := by
      rcases c2398 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
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
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u12 : ¬v20 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u10
    have u13 : ¬v2 := by
      rcases c2393 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n12
    have u14 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u12
      · exact a
      · exact absurd a n10
      · exact absurd a u14
    have u16 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u14
    have u17 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u16 a
      · exact a
    rcases c229 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n11
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a n10
    · exact absurd a n12
  have c2400 : v16 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v19 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v10 := by
      rcases c2398 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v21 := by
      rcases c2399 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v18 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u1
    have u11 : v20 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u1
    have u12 : v17 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    rcases c88 with a|a|a
    · exact absurd u12 a
    · exact absurd u9 a
    · exact absurd u11 a
  have c2402 : v18 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v9 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v7 := by
      rcases c1832 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u2 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n2
    have u3 : v39 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n13
    rcases c150 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c2404 : v18 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ ¬v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2370 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n14
      · exact absurd a n15
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
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    have u7 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    have u8 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    have u9 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
    have u10 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u9 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n14
    · exact absurd a u6
    · exact absurd a u12
  have c2405 : ¬v38 ∨ ¬v32 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n1 a
      · exact a
    rcases c499 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n3
  have c2406 : v18 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v47 := by
      rcases c2370 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v20 := by
      rcases c93 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
    have u3 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u8 : ¬v10 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u9 : v25 := by
      rcases c2404 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact a
    have u11 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u11
  have c2407 : ¬v25 ∨ v16 ∨ ¬v17 ∨ v18 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u8 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
    have u9 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v14 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u9
    have u11 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u4
    have u12 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    rcases c2372 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u5
  have c2408 : ¬v32 ∨ v6 ∨ v13 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v39 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    have u6 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a u3
    rcases c159 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c2409 : v38 ∨ ¬v1 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n10
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n15
      · exact a
    have u6 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n17
      · exact a
      · exact absurd a n8
      · exact absurd a n12
    have u8 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u7 a
      · exact a
    rcases c282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n14
    · exact absurd a n13
    · exact absurd a n9
    · exact absurd a n17
    · exact absurd a n16
    · exact absurd a n12
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u2
  have c2410 : v20 ∨ v6 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ ¬v30 ∨ v36 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v37 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact a
    have u4 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u1
    rcases c152 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2411 : v30 ∨ ¬v1 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u5 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v38 := by
      rcases c2409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v47 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n9
      · exact a
    have u12 : v48 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a u10
    rcases c182 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c2412 : v29 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
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
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u8 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u9 : v17 := by
      rcases c2406 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u9 a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd n8 a
    have u12 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u11
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v28 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd n8 a
      · exact absurd a n9
      · exact a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v32 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n13
    have u17 : ¬v30 := by
      rcases c2410 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a n13
    rcases c2411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd u9 a
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n14
  have c2413 : v48 ∨ ¬v1 ∨ v8 ∨ ¬v18 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u5 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v28 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u5
    have u13 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
    have u15 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
    have u16 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
    have u18 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
    have u19 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u16
      · exact a
      · exact absurd a u17
    rcases c156 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c229 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
  have c2415 : v33 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
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
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u8 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u9 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u10 : v18 := by
      rcases c2412 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd u10 a
      · exact absurd n7 a
      · exact a
    have u13 : v25 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a n13
    have u14 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a u15
    have u17 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u15
    have u18 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v35 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a n8
    have u21 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u19
    rcases c2414 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a n12
    · exact absurd a n13
  have c2416 : v17 ∨ v16 ∨ ¬v18 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c1388 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n10
    have u5 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
  have c2417 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v16 ∨ v17 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v26 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2370 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u2 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u9 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u10 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u11 : ¬v18 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
    have u13 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd n10 a
    have u14 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd n10 a
    have u15 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n9
      · exact a
      · exact absurd a u13
    have u16 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n13
    have u19 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n13
    have u20 : v2 := by
      rcases c2402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u21 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
    have u22 : v40 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u21
      · exact a
      · exact absurd a n0
    have u23 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u11
    have u24 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u22 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u13
  have c2418 : v11 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v18 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v33 ∨ ¬v41 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v30 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n13
      · exact a
    have u7 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u8 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n9
      · exact a
    have u9 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c2419 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v29 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
    have u2 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u11 : v17 := by
      rcases c2417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u11 a
      · exact absurd n7 a
      · exact a
    have u13 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n7 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a u5
    have u15 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v41 := by
      rcases c2418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u18 : v34 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u17
      · exact absurd a n0
    rcases c2171 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd u18 a
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n12
  have c2420 : ¬v1 ∨ v8 ∨ v9 ∨ ¬v13 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd n5 a
    have u6 : ¬v19 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v24 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u10 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n14
    have u18 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n14
    have u19 : ¬v4 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
    have u20 : ¬v41 := by
      rcases c2418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u12
      · exact absurd a u10
    have u21 : v40 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd a n13
    have u22 : ¬v34 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a n13
      · exact absurd a n14
    have u23 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v7 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n14
    have u26 : ¬v30 := by
      rcases c2169 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u12
      · exact a
    rcases c5 with a|a|a
    · exact absurd n0 a
    · exact absurd u27 a
    · exact absurd u25 a
  have c2421 : v23 ∨ ¬v1 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ ¬v40 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : v7 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
    have u4 : ¬v30 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u2
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n11
      · exact a
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u3 a
  have c2422 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v41 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    rcases c347 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c2423 : v48 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u2 : ¬v21 := by
      rcases c2419 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u4 : v17 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
      · exact a
    have u5 : v20 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
      · exact a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u11 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u12 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
    have u13 : ¬v13 := by
      rcases c2420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u14 : v27 := by
      rcases c2228 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd u5 a
    have u15 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a n10
    have u18 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n11
      · exact a
      · exact absurd a u8
      · exact absurd a n13
    have u22 : v4 := by
      rcases c2422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n0
    have u23 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd u22 a
    · exact absurd a u19
  have c2424 : v21 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n12
      · exact a
    have u2 : v47 := by
      rcases c2387 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
    have u4 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n16
    have u9 : ¬v13 := by
      rcases c2386 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n16
    have u10 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u12 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a u10
    rcases c285 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd u12 a
    · exact absurd a u9
  have c2425 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n8
  exact ⟨c2372, c2373, c2377, c2381, c2386, c2387, c2389, c2390, c2391, c2400, c2405, c2407, c2408, c2414, c2415, c2419, c2421, c2422, c2423, c2424, c2425⟩
