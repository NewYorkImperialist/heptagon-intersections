import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1700-1749 of the 2915-step refutation of ccase001: 100 core clauses and 72 earlier-derived ones give 13 more. -/
theorem CCase001_block034
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c94 : ¬v17 ∨ ¬v21)
    (c97 : ¬v18 ∨ ¬v21)
    (c99 : ¬v21 ∨ ¬v19)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c144 : ¬v34 ∨ ¬v35)
    (c145 : v29 ∨ v35 ∨ v33 ∨ v30 ∨ v34 ∨ v32 ∨ v31)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c164 : ¬v40 ∨ ¬v41)
    (c170 : ¬v46 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c219 : ¬v46 ∨ v32 ∨ v3 ∨ v40 ∨ v4 ∨ v2 ∨ v39 ∨ v26 ∨ v37 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v47)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c344 : v22 ∨ v13 ∨ v17 ∨ v10 ∨ v1 ∨ v23 ∨ v3 ∨ ¬v16 ∨ v20 ∨ v9 ∨ v21 ∨ v2 ∨ v15 ∨ v27)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c363 : v43 ∨ ¬v23 ∨ v45 ∨ v24 ∨ v21 ∨ v37 ∨ v30 ∨ v31 ∨ v22 ∨ v28 ∨ v35 ∨ v15 ∨ v44 ∨ v16)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c406 : ¬v31 ∨ v38 ∨ v4 ∨ v37 ∨ v40 ∨ v32 ∨ v33 ∨ v24 ∨ v25 ∨ v26 ∨ v2 ∨ v30 ∨ v3 ∨ v45)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c441 : ¬v24 ∨ v31 ∨ v17 ∨ v32 ∨ v25 ∨ v18 ∨ v23 ∨ v16)
    (c449 : ¬v38 ∨ v31 ∨ v11 ∨ v44 ∨ v10 ∨ v45 ∨ v37 ∨ v39 ∨ v9 ∨ v40 ∨ v33 ∨ v32 ∨ v3 ∨ v47)
    (c458 : ¬v38 ∨ v45 ∨ v24 ∨ v37 ∨ v16 ∨ v39 ∨ v44 ∨ v31 ∨ v18 ∨ v32 ∨ v36 ∨ v43 ∨ v17 ∨ v29)
    (c487 : v43 ∨ v15 ∨ v45 ∨ v44 ∨ v9 ∨ v10 ∨ v2 ∨ v17 ∨ v14 ∨ v28 ∨ v21 ∨ v23 ∨ v22 ∨ ¬v16)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c517 : ¬v38 ∨ v2 ∨ v44 ∨ v31 ∨ v37 ∨ v45 ∨ v32 ∨ v41 ∨ v4 ∨ v34 ∨ v40 ∨ v39 ∨ v3 ∨ v48)
    (c557 : ¬v8 ∨ v22 ∨ v14 ∨ v9 ∨ v3 ∨ v17 ∨ v2 ∨ v1 ∨ v15 ∨ v10 ∨ v30 ∨ v29 ∨ v21 ∨ v35)
    (c565 : v43 ∨ v29 ∨ v21 ∨ v34 ∨ v49 ∨ v23 ∨ v30 ∨ ¬v22 ∨ v36 ∨ v20 ∨ v44 ∨ v15 ∨ v28 ∨ v27)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c571 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v34 ∨ v41 ∨ v36 ∨ v29)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c761 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c968 : ¬v26 ∨ v3 ∨ v10 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1167 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1461 : v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1746 : v23 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v35 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v48)
    (c1791 : ¬v32 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v34 ∨ v39 ∨ v40 ∨ v41)
    (c1912 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2093 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2150 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2186 : ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2196 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v16 ∨ v19 ∨ v26 ∨ ¬v30 ∨ v33 ∨ v37 ∨ v38 ∨ v45)
    (c2212 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2235 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2241 : ¬v19 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v47 ∨ v48 ∨ v49)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2276 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2285 : ¬v23 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v35)
    (c2290 : ¬v37 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2298 : v17 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2306 : ¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45)
    (c2322 : v12 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2323 : ¬v17 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2324 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v44 ∨ v45)
    (c2325 : ¬v32 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2327 : ¬v4 ∨ v8 ∨ ¬v14 ∨ v16 ∨ v47 ∨ v48 ∨ v49)
    : (v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17) ∧ (¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v43 ∨ v44 ∨ v49) ∧ (v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v17 ∨ v1 ∨ v2 ∨ v9 ∨ v14 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v31 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v32 ∨ v37 ∨ v44 ∨ v45) ∧ (¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45) ∧ (v8 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v10 ∨ v9 ∨ v32 ∨ v47 ∨ v48 ∨ v49) := by
  have c2328 : v16 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v12 := by
      rcases c2322 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v17 := by
      rcases c2323 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v15 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
    have u15 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u12 a
    have u20 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v4 := by
      rcases c2327 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
    have u25 : ¬v37 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
    have u26 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
    have u27 : ¬v32 := by
      rcases c2325 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u28 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u14
    have u29 : v30 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u30 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u31 : v39 := by
      rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u30
      · exact absurd a u23
      · exact absurd a u4
      · exact a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    have u32 : v38 := by
      rcases c2196 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd u29 a
      · exact absurd a u14
      · exact absurd a u25
      · exact a
      · exact absurd a u10
    rcases c157 with a|a
    · exact absurd u32 a
    · exact absurd u31 a
  have c2329 : v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v12 := by
      rcases c2322 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v17 := by
      rcases c2323 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v16 := by
      rcases c2328 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u13 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd u13 a
    have u18 : v7 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u13 a
    have u19 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
    have u20 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u23 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v3 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
    rcases c31 with a|a|a
    · exact absurd u24 a
    · exact absurd u18 a
    · exact absurd u23 a
  have c2330 : v17 ∨ v10 ∨ v13 ∨ v20 ∨ v24 ∨ v27 ∨ ¬v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v3 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v4 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u3 a
    have u12 : v14 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v8 := by
      rcases c2329 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    rcases c568 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a n1
  have c2331 : v25 ∨ v3 ∨ v4 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v31 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n7
      · exact a
    have u2 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n11
    have u9 : v39 := by
      rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u9 a
    rcases c406 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u6
  have c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v16 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n7
  have c2333 : v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u6 a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n16
    have u14 : v39 := by
      rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n16
    have u15 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n10
      · exact a
    have u17 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u16 a
    rcases c2331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u17
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c2334 : v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v34 := by
      rcases c2333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v38 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n13
      · exact a
      · exact absurd a u3
    rcases c2212 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c2336 : v25 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n18
    have u7 : v32 := by
      rcases c2334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact a
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
    have u13 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u9
    have u14 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1791 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u11
  have c2337 : ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v4 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n2
    have u7 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u9 : v34 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v16 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v40 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
    have u15 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u11
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v28 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u15
    rcases c1421 with a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a n8
    · exact absurd a u18
    · exact absurd u20 a
  have c2338 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n7 a
      · exact a
    rcases c344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd n7 a
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
  have c2339 : v39 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n9 a
    rcases c449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n12
  have c2340 : ¬v38 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2339 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c2341 : ¬v16 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u4
    have u8 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u9 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v3 := by
      rcases c2337 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
    have u17 : ¬v24 := by
      rcases c2338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u4
    have u18 : ¬v29 := by
      rcases c2330 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v30 := by
      rcases c2336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v38 := by
      rcases c2340 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u20
  have c2342 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v38 := by
      rcases c2340 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
  have c2343 : v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v24 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    have u3 : v31 := by
      rcases c2342 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v15 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
    have u11 : v18 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c82 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2028 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c2345 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
    have u8 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
    have u9 : ¬v38 := by
      rcases c2340 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u10 : ¬v26 := by
      rcases c968 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v24 := by
      rcases c2342 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u13 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u14 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
    have u21 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u22 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u7
    have u23 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u22 a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
    have u26 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd u2 a
      · exact absurd a n8
    rcases c1033 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u9
  have c2346 : ¬v3 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c2341 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u7 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
    have u9 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n9
    have u10 : v4 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n3
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u10 a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n7
    rcases c2241 with a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2347 : ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v8 := by
      rcases c2329 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v16 := by
      rcases c2341 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v3 := by
      rcases c2346 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v31 := by
      rcases c2345 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u20 : v24 := by
      rcases c2343 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
    have u21 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    rcases c108 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c2348 : ¬v16 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2338 with a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a u1
  have c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c2348 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2350 : ¬v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
  have c2351 : v14 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u3 : v16 := by
      rcases c2343 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u3 a
    have u8 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v22 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u10 : ¬v8 := by
      rcases c557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n12
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n19
  have c2352 : v9 ∨ v3 ∨ v10 ∨ v11 ∨ ¬v31 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u15 : v24 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n8
    have u16 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u17
    have u20 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u19 a
      · exact a
    rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd u19 a
  have c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u2 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u3
  have c2354 : ¬v16 ∨ v2 ∨ v9 ∨ v10 ∨ v14 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd n0 a
  have c2355 : v9 ∨ v3 ∨ v10 ∨ v11 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u9 : ¬v31 := by
      rcases c2352 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v38 := by
      rcases c2340 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u11 : v24 := by
      rcases c2342 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u12 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v30 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v16 := by
      rcases c2354 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
    have u22 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v37 := by
      rcases c1033 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u21
      · exact a
      · exact absurd a u10
    have u24 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v8 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
    have u27 : ¬v18 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u24
    have u28 : v17 := by
      rcases c441 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u18
    have u29 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u28 a
      · exact a
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u30
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u29
    · exact absurd a n0
  have c2356 : ¬v17 ∨ v1 ∨ v2 ∨ v9 ∨ v14 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v8 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u5
  have c2357 : ¬v24 ∨ v1 ∨ v2 ∨ v9 ∨ v10 ∨ v14 ∨ v29 ∨ v31 ∨ v32 ∨ v40 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u6 : ¬v17 := by
      rcases c2356 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u7 : ¬v16 := by
      rcases c2354 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v18 := by
      rcases c441 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u7
    have u9 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v8 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a n3
  have c2358 : ¬v18 ∨ v1 ∨ v2 ∨ v9 ∨ v14 ∨ v29 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact a
    have u5 : ¬v8 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
    rcases c1638 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2359 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    rcases c458 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n12
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n5
  have c2360 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v18 ∨ v24 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    rcases c2359 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2361 : v35 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v14 ∨ v16 ∨ v18 ∨ v24 ∨ v29 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u3 : v17 := by
      rcases c2360 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v22 := by
      rcases c2356 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u7 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u4
  have c2362 : v47 ∨ v3 ∨ v9 ∨ v10 ∨ ¬v30 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v11 := by
      rcases c2355 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
    have u17 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
    have u18 : ¬v24 := by
      rcases c2357 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
    have u19 : ¬v18 := by
      rcases c2358 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
    have u20 : v16 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
    have u21 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u26 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u2
    have u27 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u6
    have u28 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v4 := by
      rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u29
      · exact absurd a n1
      · exact absurd a n6
    have u31 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u27 a
    have u32 : v8 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u11
      · exact absurd u30 a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
    have u33 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u27 a
    have u34 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n7
      · exact a
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd u27 a
      · exact absurd a n6
      · exact absurd a u8
    have u35 : v12 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u8
      · exact a
      · exact absurd a u33
      · exact absurd a u21
      · exact absurd a u31
      · exact absurd u34 a
    rcases c48 with a|a|a
    · exact absurd u32 a
    · exact absurd u35 a
    · exact absurd u7 a
  have c2363 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v32 ∨ v37 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v38 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n8
    rcases c2212 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2364 : ¬v16 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v14 ∨ v30 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
    have u6 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v31 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u10 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    have u13 : ¬v22 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u14 : v8 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    rcases c557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u11
  have c2365 : v2 ∨ v1 ∨ v3 ∨ v9 ∨ v10 ∨ v14 ∨ v17 ∨ v30 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v31 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v16 := by
      rcases c2364 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u5
      · exact a
    have u7 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v21 := by
      rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u4
    have u10 : v15 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n7
    rcases c85 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c2366 : v3 ∨ v9 ∨ v10 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v30 := by
      rcases c2362 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v17 := by
      rcases c2365 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u11 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact a
    have u15 : ¬v8 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n1
    have u16 : v29 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u14 a
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u11
  have c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v21 := by
      rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n4
    have u11 : v17 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a u6
      · exact a
    rcases c94 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2368 : ¬v17 ∨ v1 ∨ v2 ∨ v9 ∨ v10 ∨ v14 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v8 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
    have u6 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    rcases c1547 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
  have c2369 : v8 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v15 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact a
    have u4 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
    have u10 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n3 a
      · exact absurd u9 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a n5
  have c2370 : v47 ∨ ¬v3 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v29 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
    have u8 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n13
    have u10 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n13
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u7
    have u15 : ¬v42 := by
      rcases c571 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u16 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n12
    have u17 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a u9
    have u18 : ¬v24 := by
      rcases c441 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n3
    have u19 : v37 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a n11
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n9
    have u20 : v22 := by
      rcases c1746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n12
    have u21 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u15
    have u23 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u22 a
    have u24 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    rcases c2093 with a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd u2 a
    · exact absurd a n0
  have c2371 : v19 ∨ v9 ∨ v10 ∨ v16 ∨ v18 ∨ v20 ∨ v21 ∨ v29 ∨ ¬v30 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : v3 := by
      rcases c2366 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c2368 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v23 := by
      rcases c2370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u11
    have u15 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u2 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u14 a
    have u17 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u14 a
    have u18 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n12
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd u14 a
      · exact absurd a n11
      · exact absurd a u3
    have u19 : v12 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u18 a
    have u20 : v11 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n2
    rcases c70 with a|a|a
    · exact absurd u19 a
    · exact absurd u18 a
    · exact absurd u20 a
  have c2372 : v18 ∨ v9 ∨ v10 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v29 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c2368 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u9 : ¬v30 := by
      rcases c2371 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
  have c2373 : v47 ∨ v9 ∨ v10 ∨ ¬v15 ∨ v16 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v3 := by
      rcases c2366 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u13
    have u15 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
    have u16 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u15
    have u19 : v29 := by
      rcases c2372 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u23
    have u26 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u6 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u25 a
    have u28 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u25 a
    have u29 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n7
      · exact a
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd u25 a
      · exact absurd a n6
      · exact absurd a u7
    have u30 : v12 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u26
      · exact absurd u29 a
    have u31 : v11 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a n2
    rcases c70 with a|a|a
    · exact absurd u30 a
    · exact absurd u29 a
    · exact absurd u31 a
  have c2374 : v16 ∨ v9 ∨ v10 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v3 := by
      rcases c2366 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
    have u10 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n6
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v15 := by
      rcases c2373 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v17 := by
      rcases c2368 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u15 : v8 := by
      rcases c2369 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v21 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n1
    have u17 : v7 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u13
    have u18 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u1 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u17 a
    have u21 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u17 a
    have u22 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n5
      · exact absurd a u2
    have u23 : v12 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
    have u24 : v11 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a n2
    rcases c70 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u24 a
  have c2375 : ¬v29 ∨ v9 ∨ v10 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v3 := by
      rcases c2366 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v16 := by
      rcases c2374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u17 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u17
    have u19 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u8 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u18 a
    have u21 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u18 a
    have u22 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a u4
    have u23 : v12 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u4
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd u22 a
    have u24 : v11 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a n2
    rcases c70 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u24 a
  have c2376 : ¬v7 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u3 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n13
      · exact absurd a n6
    have u4 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n6
    have u5 : v11 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n5
    rcases c49 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u3 a
  have c2377 : v10 ∨ v9 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v29 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u10 : v3 := by
      rcases c2366 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v16 := by
      rcases c2374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u11 a
    have u19 : ¬v7 := by
      rcases c2376 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v8 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a u12
    have u22 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u23 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v30 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u8
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
    have u25 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u26
  exact ⟨c2329, c2332, c2335, c2344, c2347, c2349, c2350, c2353, c2356, c2363, c2367, c2369, c2377⟩
