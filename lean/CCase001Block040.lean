import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2000-2049 of the 2915-step refutation of ccase001: 124 core clauses and 83 earlier-derived ones give 14 more. -/
theorem CCase001_block040
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
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
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c109 : ¬v25 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
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
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c149 : ¬v40 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c171 : ¬v47 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c183 : ¬v46 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c205 : ¬v32 ∨ v39 ∨ v38 ∨ v5 ∨ v4 ∨ v25 ∨ v31 ∨ v26 ∨ v33 ∨ v34 ∨ v27 ∨ v3 ∨ v41 ∨ v46)
    (c207 : ¬v25 ∨ v5 ∨ v31 ∨ v3 ∨ v26 ∨ v19 ∨ v4 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v16 ∨ v30)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c258 : v36 ∨ ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v18 ∨ v31 ∨ v22 ∨ v26 ∨ v17 ∨ v33 ∨ v30 ∨ v19 ∨ v29)
    (c260 : ¬v39 ∨ v32 ∨ v5 ∨ v3 ∨ v46 ∨ v45 ∨ v35 ∨ v40 ∨ v38 ∨ v41 ∨ v42 ∨ v4 ∨ v33 ∨ v49)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c302 : v21 ∨ v28 ∨ v18 ∨ v33 ∨ v34 ∨ v26 ∨ v32 ∨ v5 ∨ v20 ∨ v7 ∨ v6 ∨ v25 ∨ v13 ∨ ¬v27)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c370 : v11 ∨ v4 ∨ v46 ∨ v33 ∨ v13 ∨ v5 ∨ v35 ∨ v12 ∨ ¬v6 ∨ v7 ∨ v41 ∨ v34 ∨ v48 ∨ v49)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c380 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v4 ∨ v39 ∨ v5 ∨ v48)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c437 : ¬v39 ∨ v32 ∨ v45 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c563 : v11 ∨ v4 ∨ v12 ∨ v9 ∨ ¬v10 ∨ v3 ∨ v17 ∨ v5 ∨ v19 ∨ v16 ∨ v32 ∨ v30 ∨ v31 ∨ v24)
    (c565 : v43 ∨ v29 ∨ v21 ∨ v34 ∨ v49 ∨ v23 ∨ v30 ∨ ¬v22 ∨ v36 ∨ v20 ∨ v44 ∨ v15 ∨ v28 ∨ v27)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c746 : ¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c969 : v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1110 : ¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1119 : ¬v10 ∨ v2 ∨ ¬v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v5 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1447 : ¬v31 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v39)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1452 : ¬v3 ∨ ¬v1 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1456 : v38 ∨ ¬v1 ∨ ¬v11 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1567 : ¬v20 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2124 : ¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v20)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2182 : v21 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v14 ∨ v20)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2275 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v49)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2329 : v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2415 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2434 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2442 : ¬v3 ∨ ¬v1 ∨ v8 ∨ ¬v10 ∨ v43 ∨ v44 ∨ v49)
    (c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2482 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2497 : ¬v21 ∨ v48 ∨ v49)
    (c2537 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c2543 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2564 : ¬v34 ∨ v1 ∨ v3 ∨ v8 ∨ v10 ∨ v48 ∨ v49)
    (c2579 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c2585 : v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49)
    (c2587 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2591 : ¬v4 ∨ v48 ∨ v49)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2611 : v15 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v16 ∨ v48 ∨ v49)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2622 : v2 ∨ v1 ∨ v7 ∨ v48 ∨ v49)
    (c2629 : v11 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v48 ∨ v49)
    : (¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34) ∧ (¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46) ∧ (¬v32 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v38 ∨ v39) ∧ (¬v8 ∨ ¬v2 ∨ v4 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19) ∧ (¬v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v43 ∨ v44 ∨ v49) ∧ (v1 ∨ v7 ∨ v48 ∨ v49) ∧ (¬v14 ∨ v7 ∨ ¬v11 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v1 ∨ ¬v11 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (¬v34 ∨ ¬v1 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v3 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v2 ∨ v7 ∨ v11 ∨ ¬v14 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v15 ∨ v7 ∨ v16 ∨ v48 ∨ v49) ∧ (¬v14 ∨ v7 ∨ v11 ∨ v16 ∨ v48 ∨ v49) := by
  have c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2631 : v11 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : v9 := by
      rcases c2629 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u9 a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
    have u13 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd n4 a
      · exact absurd a u4
    have u14 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v34 := by
      rcases c2564 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u17 : v15 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n1
    have u18 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u22 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
  have c2632 : v8 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v11 := by
      rcases c2631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    have u10 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd n3 a
      · exact absurd a u4
    have u11 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
    rcases c18 with a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd u1 a
  have c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    rcases c272 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
  have c2634 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v35 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    rcases c2633 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a n0
  have c2635 : ¬v18 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v34 := by
      rcases c2634 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u13 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact a
    have u14 : v25 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
    have u15 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u14 a
    rcases c356 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u15
  have c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v26 := by
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
    have u5 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    rcases c117 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2637 : ¬v32 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    rcases c258 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n7
  have c2638 : ¬v14 ∨ v1 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v8 := by
      rcases c2632 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u15 : v3 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
    have u16 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u15 a
    have u17 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u1 a
    have u18 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u3 a
      · exact absurd a n3
    have u19 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n3
    have u20 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v18 := by
      rcases c2635 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n3
    have u26 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u27 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u7
    have u28 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u7
    have u29 : v20 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a n3
    have u30 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : ¬v26 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u30
      · exact absurd u29 a
    have u35 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u36 : v27 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u32
      · exact absurd a u34
      · exact a
      · exact absurd a u35
    have u37 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u36 a
      · exact a
    have u38 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u36 a
      · exact a
    have u39 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u36 a
      · exact a
    have u40 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u36 a
    have u41 : v32 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact absurd u36 a
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u7
    have u42 : ¬v31 := by
      rcases c1447 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u39
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u18
    have u43 : ¬v29 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u40
      · exact absurd a u24
      · exact a
      · exact absurd a u38
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u28
    rcases c2637 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u41 a
    · exact absurd a u33
    · exact absurd a u25
    · exact absurd a u32
    · exact absurd a u40
    · exact absurd a u37
    · exact absurd a u34
    · exact absurd a u43
    · exact absurd a u28
    · exact absurd a u42
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u18
  have c2639 : v18 ∨ v7 ∨ v11 ∨ v14 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a u9
    have u11 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a u8
    have u13 : v15 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v29 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a u8
    have u16 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    rcases c2597 with a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
  have c2640 : v34 ∨ v1 ∨ v7 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v18 := by
      rcases c2639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v8 := by
      rcases c2611 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v9 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd u15 a
    have u18 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact a
    have u25 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u20
    have u26 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
    have u27 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u28 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u29 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u22
    have u30 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u26
      · exact a
      · exact absurd a n0
    have u31 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u1 a
    have u32 : ¬v41 := by
      rcases c2579 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a n4
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u13
    · exact absurd a u32
    · exact absurd a n0
  have c2641 : v11 ∨ v1 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v34 := by
      rcases c2640 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v29 := by
      rcases c128 with a|a
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
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
    have u18 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact a
      · exact absurd a u16
    have u19 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u7
    have u20 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u14
    have u22 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u19 a
      · exact a
    rcases c2152 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd u9 a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
  have c2642 : ¬v18 ∨ v1 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v8 := by
      rcases c2611 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v11 := by
      rcases c2641 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd u5 a
  have c2643 : v15 ∨ v1 ∨ v7 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v11 := by
      rcases c2641 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v8 := by
      rcases c2611 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd u4 a
  have c2644 : ¬v8 ∨ ¬v2 ∨ v4 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n5
    have u4 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n2
    rcases c17 with a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u3 a
  have c2645 : v9 ∨ v1 ∨ v7 ∨ v16 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c2641 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v15 := by
      rcases c2643 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v18 := by
      rcases c2642 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v8 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u11
    have u17 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd u4 a
      · exact absurd a u16
    have u18 : v22 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
    have u19 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u4 a
    have u20 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u17 a
    have u21 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd u7 a
      · exact absurd a n5
    have u23 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n5
    have u24 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n5
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a n4
    have u26 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u1 a
    rcases c1468 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd u4 a
    · exact absurd a u26
    · exact absurd u25 a
    · exact absurd a u5
    · exact absurd a u9
  have c2646 : v16 ∨ v1 ∨ v7 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c2642 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v11 := by
      rcases c2641 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v15 := by
      rcases c2643 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v9 := by
      rcases c2645 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u8 a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u3 a
    have u11 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u4
    have u12 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u1
    rcases c17 with a|a|a
    · exact absurd u11 a
    · exact absurd u2 a
    · exact absurd u12 a
  have c2647 : ¬v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
  have c2648 : v34 ∨ v1 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v11 := by
      rcases c2641 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v18 := by
      rcases c2642 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v16 := by
      rcases c2646 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v8 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u12
    have u16 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n0
    have u22 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u21
      · exact a
      · exact absurd a n0
    have u23 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u24 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    rcases c2647 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
  have c2649 : v1 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v18 := by
      rcases c2642 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v14 := by
      rcases c2638 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v11 := by
      rcases c2641 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : v34 := by
      rcases c2648 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u15 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u12
      · exact a
      · exact absurd a u14
    have u16 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u12
    have u18 : v20 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u16
      · exact a
    rcases c2644 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd u9 a
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u17
  have c2650 : ¬v14 ∨ v7 ∨ ¬v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u5 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u5 a
    have u12 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact a
    have u14 : v20 := by
      rcases c2182 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u14 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd n2 a
    · exact absurd a u6
    · exact absurd a u16
  have c2651 : v19 ∨ v7 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c2650 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v20 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u10
    have u12 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v34 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    rcases c1456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u2 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd u9 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
  have c2652 : ¬v20 ∨ v7 ∨ ¬v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v5 := by
      rcases c1429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
    have u14 : v35 := by
      rcases c2651 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u22 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
    have u23 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u24 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u25 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u20
    have u26 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u27 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u11
    have u28 : ¬v3 := by
      rcases c1452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n4
    have u29 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u28
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u12
    have u30 : v2 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u7 a
      · exact absurd u30 a
      · exact a
    have u32 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a n3
    have u33 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : v28 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u34
      · exact absurd a u33
    have u36 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u35 a
    rcases c1456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd u7 a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u23
    · exact absurd a u36
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n4
  have c2653 : ¬v2 ∨ ¬v1 ∨ ¬v11 ∨ v14 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
    have u6 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u7 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u8 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n3
    have u9 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n3
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u9
  have c2654 : v2 ∨ ¬v1 ∨ v7 ∨ ¬v11 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u2 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c40 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n3 a
  have c2655 : ¬v11 ∨ v7 ∨ v15 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c2650 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v20 := by
      rcases c2652 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
    have u21 : v2 := by
      rcases c2654 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n5
    have u22 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u2 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u2 a
      · exact absurd u21 a
      · exact a
    have u25 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n4
    have u26 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u27
      · exact absurd a u26
    have u29 : v27 := by
      rcases c2653 with a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a n4
    have u30 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : v19 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u28
      · exact absurd u29 a
      · exact absurd a u13
    have u33 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : v13 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u30
      · exact absurd a u33
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u31
      · exact a
      · exact absurd u29 a
    have u36 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u23
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u9
    rcases c65 with a|a|a
    · exact absurd u36 a
    · exact absurd u35 a
    · exact absurd n0 a
  have c2656 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v14 ∨ v20 ∨ v27 ∨ ¬v35 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : v18 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n13
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u6
    have u11 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v12 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
    have u16 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n11
    rcases c1349 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd u16 a
    · exact absurd a n3
    · exact absurd a u13
  have c2657 : v16 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v11 := by
      rcases c2655 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u11 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v18 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u19 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u16
    have u20 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u22
      · exact a
      · exact absurd a u12
    have u24 : ¬v41 := by
      rcases c2579 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v2 := by
      rcases c2656 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd u11 a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u26 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u19
    have u27 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u28 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u25
    rcases c2396 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u9
  have c2658 : ¬v20 ∨ v7 ∨ v11 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a u12
    have u14 : v34 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v39 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a u9
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u18 a
      · exact a
    rcases c437 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u17
  have c2659 : v14 ∨ v7 ∨ v15 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c2655 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v20 := by
      rcases c2658 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u6 a
      · exact a
    rcases c2657 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
  have c2660 : v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v16 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u8 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u10 : ¬v17 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1445 with a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
  have c2661 : ¬v34 ∨ ¬v1 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n9
    have u8 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u11 : v2 := by
      rcases c2660 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u14 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
    have u15 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u14 a
    rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u10
  have c2662 : v11 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n0
    rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u2
  have c2663 : ¬v25 ∨ v3 ∨ v4 ∨ v5 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    rcases c207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n8
  have c2664 : v31 ∨ v3 ∨ v4 ∨ v5 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v17 := by
      rcases c2662 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c2663 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n10
  have c2665 : v32 ∨ v3 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v30 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n9
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u9 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v31 := by
      rcases c2664 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
    have u16 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u5
    have u17 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
    have u18 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a u7
    have u19 : ¬v20 := by
      rcases c1567 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
    have u20 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a n8
    have u21 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u20 a
    rcases c758 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u16
  have c2666 : ¬v10 ∨ v3 ∨ v4 ∨ v6 ∨ v7 ∨ v11 ∨ ¬v14 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c47 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u4 : v20 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
    have u5 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n5
  have c2667 : ¬v2 ∨ v7 ∨ v15 ∨ v16 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c2659 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v11 := by
      rcases c2650 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a n5
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u16 : ¬v34 := by
      rcases c2661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u17 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n5
    have u18 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v10 := by
      rcases c2666 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u2
    have u21 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u13
    have u22 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u23 : v32 := by
      rcases c2665 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v28 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u27
    have u29 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u22
      · exact a
      · exact absurd a u16
      · exact absurd a u27
    have u30 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u7
      · exact a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a n5
    have u31 : v25 := by
      rcases c205 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u12
    have u32 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u1 a
    have u33 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u13
      · exact a
      · exact absurd a u33
      · exact absurd a u25
    rcases c2077 with a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u32
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u33
  have c2668 : v5 ∨ v3 ∨ v7 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v30 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : v17 := by
      rcases c2662 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v2 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v25 := by
      rcases c2663 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u15
      · exact a
    have u17 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v33 := by
      rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u1
      · exact a
      · exact absurd a n10
    have u20 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v9 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u13
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u22 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u21 a
      · exact absurd n4 a
      · exact a
    have u24 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u21 a
    rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u24
    · exact absurd u21 a
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n7
  have c2669 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n1 a
  have c2670 : ¬v6 ∨ v7 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    rcases c370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
  have c2671 : ¬v31 ∨ v7 ∨ v11 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v6 := by
      rcases c2670 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v20 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n5
    have u16 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u15 a
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c2672 : ¬v3 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n2
    have u2 : v8 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    rcases c47 with a|a|a
    · exact absurd u2 a
    · exact absurd n5 a
    · exact absurd u1 a
  have c2673 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v11 ∨ ¬v14 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u1 a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n4
  have c2674 : v32 ∨ v7 ∨ v15 ∨ v16 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c2659 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v2 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v11 := by
      rcases c2650 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v34 := by
      rcases c2661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u13 : ¬v3 := by
      rcases c2672 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u14 : ¬v12 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u15 : ¬v13 := by
      rcases c2669 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u16 : ¬v31 := by
      rcases c2671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v17 := by
      rcases c2673 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u11
    have u19 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u23 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u22
    have u24 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v5 := by
      rcases c2668 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd u5 a
      · exact absurd u25 a
      · exact a
    have u27 : v8 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd u1 a
      · exact absurd a u26
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a u3
    have u28 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u21
      · exact a
      · exact absurd a u12
    have u29 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u27 a
      · exact absurd u1 a
      · exact a
    have u30 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u27 a
      · exact absurd u1 a
      · exact a
    have u31 : v33 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a n6
    rcases c2332 with a|a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n6
  have c2675 : v30 ∨ v7 ∨ v15 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v14 := by
      rcases c2659 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v11 := by
      rcases c2650 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v2 := by
      rcases c2667 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v3 := by
      rcases c2672 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u12 : v32 := by
      rcases c2674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v9 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u16 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
    have u17 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u15 a
      · exact absurd u1 a
      · exact a
    have u18 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u15 a
    have u19 : ¬v17 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd u15 a
    · exact absurd a n2
  have c2676 : v2 ∨ v7 ∨ v11 ∨ ¬v14 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v12 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u7 : ¬v13 := by
      rcases c2669 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
    rcases c2670 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c2677 : v15 ∨ v7 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v30 := by
      rcases c2675 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v14 := by
      rcases c2659 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v11 := by
      rcases c2650 with a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
    have u22 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a u6
    have u23 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
    have u24 : ¬v20 := by
      rcases c1567 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u6
    have u25 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v2 := by
      rcases c2676 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd u19 a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u27 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u2 a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u2 a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u26 a
    have u30 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n3
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u14
    have u31 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a n3
    have u32 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u19 a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    rcases c1295 with a|a|a|a
    · exact absurd u34 a
    · exact absurd u8 a
    · exact absurd a u33
    · exact absurd a u16
  have c2678 : ¬v2 ∨ ¬v1 ∨ v11 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n9
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n9
    have u13 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u10
    have u14 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u14
    have u17 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u13
    have u18 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u20 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c2679 : ¬v14 ∨ v7 ∨ v11 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v15 := by
      rcases c2677 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v1 := by
      rcases c2649 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v34 := by
      rcases c2661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v2 := by
      rcases c2678 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v3 := by
      rcases c2672 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u20 : v33 := by
      rcases c2676 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v10 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u22 : v9 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    rcases c57 with a|a|a
    · exact absurd u22 a
    · exact absurd n0 a
    · exact absurd u21 a
  exact ⟨c2630, c2633, c2636, c2637, c2644, c2647, c2649, c2650, c2653, c2661, c2672, c2676, c2677, c2679⟩
