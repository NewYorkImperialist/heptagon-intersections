import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1850-1899 of the 2915-step refutation of ccase001: 126 core clauses and 75 earlier-derived ones give 14 more. -/
theorem CCase001_block037
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c75 : v11 ∨ v10 ∨ v9 ∨ v8 ∨ v12 ∨ v14)
    (c76 : v11 ∨ v10 ∨ v14 ∨ v13 ∨ v9 ∨ v8)
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
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c112 : ¬v28 ∨ ¬v23)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c144 : ¬v34 ∨ ¬v35)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
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
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c239 : ¬v41 ∨ v42 ∨ v40 ∨ v35 ∨ v49 ∨ v34 ∨ v33 ∨ v48)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c345 : ¬v15 ∨ v21 ∨ v19 ∨ v9 ∨ v1 ∨ v7 ∨ v28 ∨ v2 ∨ v20 ∨ v16 ∨ v26 ∨ v22 ∨ v8 ∨ v12)
    (c369 : v22 ∨ ¬v21 ∨ v10 ∨ v16 ∨ v20 ∨ v14 ∨ v28 ∨ v13 ∨ v17 ∨ v6 ∨ v1 ∨ v15 ∨ v24 ∨ v7)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c380 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v4 ∨ v39 ∨ v5 ∨ v48)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c434 : v36 ∨ ¬v30 ∨ v24 ∨ v31 ∨ v38 ∨ v23 ∨ v37 ∨ v29)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c453 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v5 ∨ v39 ∨ v41 ∨ v48)
    (c454 : ¬v47 ∨ v36 ∨ v6 ∨ v32 ∨ v1 ∨ v46 ∨ v34 ∨ v33 ∨ v5 ∨ v39 ∨ v43 ∨ v40 ∨ v48 ∨ v49)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c509 : v12 ∨ v10 ∨ v46 ∨ v3 ∨ v5 ∨ v45 ∨ v11 ∨ ¬v4)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c595 : ¬v47 ∨ v40 ∨ v39 ∨ v11 ∨ v6 ∨ v13 ∨ v2 ∨ v5 ∨ v37 ∨ v12 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c969 : v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1035 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1461 : v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1678 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1912 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1915 : ¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49)
    (c1977 : v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49)
    (c1999 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2159 : v34 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2172 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2194 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2243 : ¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2275 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v49)
    (c2290 : ¬v37 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2298 : v17 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2306 : ¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45)
    (c2324 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v44 ∨ v45)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2329 : v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2382 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2384 : v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v14 ∨ v17 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2415 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c2416 : ¬v16 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2433 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2434 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2435 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2446 : v33 ∨ v12 ∨ v13 ∨ v14 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ ¬v34 ∨ v36 ∨ v41 ∨ v42)
    (c2451 : v9 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2461 : v8 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49)
    (c2466 : v29 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c2470 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2471 : ¬v30 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v39 ∨ v48 ∨ v49)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2478 : ¬v10 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49)
    : (v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46) ∧ (¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21) ∧ (¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46) ∧ (¬v21 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v48 ∨ v49) ∧ (¬v20 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v41 ∨ v1 ∨ v5 ∨ v6 ∨ v32 ∨ v33 ∨ v34 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13) ∧ (¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14) ∧ (¬v12 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49) := by
  have c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v34 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v37 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    rcases c1744 with a|a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd a n6
  have c2480 : v11 ∨ v4 ∨ ¬v5 ∨ v10 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v3 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    rcases c17 with a|a|a
    · exact absurd n2 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2481 : v4 ∨ ¬v5 ∨ ¬v8 ∨ v10 ∨ v12 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c2480 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u3 : v3 := by
      rcases c1020 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
    have u4 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c17 with a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2482 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
  have c2483 : ¬v4 ∨ ¬v5 ∨ ¬v8 ∨ v10 ∨ v13 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u10 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a u10
    have u13 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a u13
    · exact absurd a u8
  have c2484 : ¬v5 ∨ ¬v8 ∨ v10 ∨ v13 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v11 := by
      rcases c2480 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u12 : v12 := by
      rcases c2481 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    rcases c48 with a|a|a
    · exact absurd n1 a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2485 : ¬v11 ∨ v4 ∨ v5 ∨ ¬v8 ∨ v10 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n1
  have c2486 : ¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u4 : v24 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    rcases c1079 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c2487 : v4 ∨ v5 ∨ ¬v8 ∨ v10 ∨ v13 ∨ ¬v21 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v11 := by
      rcases c2485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    have u10 : v3 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact a
    have u12 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u13 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd n6 a
      · exact absurd a n7
    have u14 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n7
    have u15 : ¬v34 := by
      rcases c2486 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u3
    have u16 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u15
    have u20 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u25 : v33 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u21
      · exact a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a n7
    have u26 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u13
    rcases c139 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c2488 : ¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n8 a
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n8 a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n3
  have c2489 : v7 ∨ v1 ∨ v2 ∨ v6 ∨ v11 ∨ v13 ∨ v15 ∨ ¬v21 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v10 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v8 := by
      rcases c2461 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v5 := by
      rcases c2484 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v4 := by
      rcases c2487 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd u8 a
      · exact absurd a n9
    have u15 : ¬v12 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a u9
    have u16 : ¬v30 := by
      rcases c2471 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u18 : v40 := by
      rcases c595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
    have u19 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v9 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u10
    have u23 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd n7 a
    have u25 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u20
      · exact a
    have u26 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v22 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u31 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u28
    rcases c2446 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd u25 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u19
  have c2490 : ¬v3 ∨ v11 ∨ v13 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v8 := by
      rcases c2461 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v5 := by
      rcases c2484 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v44 := by
      rcases c176 with a|a
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
    have u11 : v4 := by
      rcases c2487 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd u6 a
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u16 : v39 := by
      rcases c2489 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
    have u23 : v9 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u8
    have u24 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd n4 a
    have u26 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u19
      · exact a
    rcases c897 with a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u18
  have c2491 : v11 ∨ v13 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v10 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v8 := by
      rcases c2461 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v5 := by
      rcases c2484 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
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
    have u12 : ¬v3 := by
      rcases c2490 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v4 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u14 : v12 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd u13 a
    have u15 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd u14 a
      · exact absurd a u7
    have u16 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u5 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u15 a
    have u20 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u13 a
      · exact absurd u15 a
      · exact a
    rcases c1240 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd u5 a
    · exact absurd a u17
    · exact absurd a n2
  have c2492 : v35 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u2 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u3 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u2 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
  have c2493 : v2 ∨ v6 ∨ v9 ∨ v13 ∨ v16 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : v35 := by
      rcases c2492 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u12 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n4
      · exact a
    rcases c2028 with a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
  have c2494 : v13 ∨ v15 ∨ ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v10 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v8 := by
      rcases c2461 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
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
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v11 := by
      rcases c2491 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v5 := by
      rcases c2484 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v4 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a u6
      · exact a
    have u18 : ¬v6 := by
      rcases c2470 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v2 := by
      rcases c2493 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u19 a
    have u21 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u19 a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u9
  have c2495 : ¬v2 ∨ ¬v8 ∨ v10 ∨ ¬v13 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v3 := by
      rcases c1468 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u5
    have u7 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n6
    have u8 : v4 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c2 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd n0 a
  have c2496 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c509 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd n1 a
  have c2497 : ¬v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u11 : ¬v10 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : v13 := by
      rcases c2494 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u13 : v8 := by
      rcases c2461 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v9 := by
      rcases c42 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v2 := by
      rcases c2495 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u20 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u22 : v4 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v1 := by
      rcases c2496 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u24 : v7 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u18
      · exact a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u1
    have u25 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    have u26 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    rcases c509 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd u22 a
  have c2498 : v2 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u2 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v7 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u11 : v17 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact a
    have u14 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u15 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    rcases c103 with a|a
    · exact absurd u15 a
    · exact absurd u13 a
  have c2499 : v16 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u5 : v15 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u6 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u5 a
    have u9 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
    have u10 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u1
    have u11 : v30 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v38 := by
      rcases c2435 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2500 : v42 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v13 ∨ ¬v14 ∨ v17 ∨ v21 ∨ v37 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n10 a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u4 : v16 := by
      rcases c2499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n5
  have c2501 : ¬v17 ∨ v1 ∨ v3 ∨ v8 ∨ ¬v13 ∨ ¬v14 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
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
    have u3 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u5 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v2 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u7 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact a
    have u9 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    rcases c103 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c2502 : ¬v13 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
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
    have u7 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n11
    have u8 : ¬v37 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
    have u9 : v14 := by
      rcases c75 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
      · exact a
    have u10 : ¬v17 := by
      rcases c2501 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n11
    have u11 : ¬v34 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u13 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
    rcases c2500 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd u9 a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n11
  have c2503 : ¬v13 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c2498 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v5 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd n4 a
    have u7 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u8 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u9 : v8 := by
      rcases c2502 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u11 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a n5
      · exact a
    have u12 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u11 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u7
  have c2504 : v49 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ ¬v13 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v9 := by
      rcases c2503 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u4 a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n7 a
    have u7 : v16 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd u4 a
      · exact a
    have u8 : ¬v7 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
    rcases c2416 with a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n0
  have c2505 : ¬v13 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v2 := by
      rcases c2504 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
    have u7 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u8 : v9 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
    have u9 : v12 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd n3 a
    rcases c61 with a|a|a
    · exact absurd n0 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c2506 : ¬v9 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u3 : v20 := by
      rcases c1811 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
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
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    rcases c2172 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
  have c2507 : ¬v20 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2451 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2508 : ¬v30 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v15 ∨ v16 ∨ v20 ∨ v21 ∨ v26 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
    have u6 : v23 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n14
      · exact a
      · exact absurd a n13
      · exact absurd a u1
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u6 a
    rcases c345 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n6
  have c2509 : v41 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v37 ∨ v39 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n9 a
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n19 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd n19 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n19 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n19 a
    have u6 : v40 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd n19 a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n20
    have u7 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u8 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v30 := by
      rcases c2508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a u9
      · exact absurd a n17
      · exact absurd a u10
    have u12 : v29 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n15
      · exact a
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u13 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a n10
      · exact a
    have u14 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u13 a
    rcases c485 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n17
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u15
  have c2510 : ¬v41 ∨ v1 ∨ v5 ∨ v6 ∨ v32 ∨ v33 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
  have c2511 : v16 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v17 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
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
    have u7 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u8 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n12
    have u11 : ¬v41 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v14 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd u12 a
      · exact absurd a u1
    have u14 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u16 : v3 := by
      rcases c2502 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u6
    have u18 : v15 := by
      rcases c2451 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u17 a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n12
    have u19 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u7
    have u22 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u23 : v40 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a n11
    have u24 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u23 a
      · exact a
    rcases c2509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd u18 a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd u2 a
    · exact absurd a n11
  have c2512 : v17 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v14 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd n10 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd n10 a
      · exact absurd a u2
    have u8 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n13
    have u9 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n10 a
      · exact absurd u7 a
      · exact a
    have u10 : v16 := by
      rcases c2511 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u10 a
      · exact absurd a n0
    have u14 : ¬v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u15 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n13
    have u16 : v23 := by
      rcases c745 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u14
      · exact a
    have u17 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u24 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u25 : ¬v41 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n12
      · exact absurd a n13
    have u26 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u27 : v36 := by
      rcases c485 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u22
    have u28 : v40 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n12
    rcases c149 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2513 : v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ ¬v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v3 := by
      rcases c2505 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v9 := by
      rcases c2506 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v12 := by
      rcases c2498 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c1678 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd n4 a
    have u13 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
    have u14 : v14 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd n4 a
      · exact a
      · exact absurd a u13
    have u15 : v17 := by
      rcases c2512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u19 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u20 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
    rcases c103 with a|a
    · exact absurd u20 a
    · exact absurd u18 a
  have c2514 : ¬v13 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v1 := by
      rcases c2513 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v12 := by
      rcases c2496 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v8 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    rcases c51 with a|a|a
    · exact absurd u8 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c2515 : ¬v17 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a n1
  have c2516 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
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
    have u13 : v12 := by
      rcases c2496 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v14 := by
      rcases c2275 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u15 : ¬v17 := by
      rcases c2515 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a u6
    have u16 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u14
    have u17 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u18 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u17
      · exact a
      · exact absurd a u19
    have u21 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
    have u25 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u26 : ¬v34 := by
      rcases c1999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u9
    have u27 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v15 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a u14
      · exact a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u29 : v20 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd u20 a
      · exact absurd a u26
      · exact absurd a u17
    rcases c84 with a|a
    · exact absurd u28 a
    · exact absurd u29 a
  have c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd n3 a
  have c2518 : v1 ∨ v5 ∨ v6 ∨ ¬v8 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a u2
    have u7 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
    have u8 : v18 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n1
    have u9 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u8 a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n3 a
  have c2519 : v48 ∨ ¬v4 ∨ v5 ∨ ¬v8 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v6 := by
      rcases c2518 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u11 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u14 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd n3 a
      · exact absurd a u1
      · exact a
    have u15 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
    have u16 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n8
    have u19 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u20 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n8
    have u21 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u19
      · exact a
      · exact absurd a u20
    have u22 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v29 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a u19
    have u25 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    rcases c124 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2520 : v20 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v19 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
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
    have u9 : v14 := by
      rcases c76 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n3
    have u10 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u9 a
      · exact a
    have u11 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u9 a
      · exact absurd a u3
    have u12 : v15 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
    have u13 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u12 a
    have u18 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u19 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u20 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u19
    have u21 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
    have u22 : ¬v37 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
    have u23 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u8
    have u24 : v30 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u25 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v38 := by
      rcases c2435 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u25
  have c2521 : v19 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c2519 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v7 := by
      rcases c2520 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u11 : v18 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n2
    rcases c2382 with a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n9
  have c2522 : ¬v18 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
  have c2523 : v10 ∨ ¬v4 ∨ v5 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v8 := by
      rcases c2519 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v9 := by
      rcases c2521 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n4 a
    have u9 : ¬v7 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v18 := by
      rcases c2522 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd n4 a
      · exact absurd a n2
    have u13 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd u7 a
    · exact absurd a u10
  have c2524 : v10 ∨ ¬v4 ∨ v5 ∨ v11 ∨ ¬v12 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v8 := by
      rcases c2519 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
    have u8 : v19 := by
      rcases c2523 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v9 := by
      rcases c2451 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n7
    have u13 : v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u1
    have u14 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n4 a
    have u15 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u17 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2396 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
  have c2525 : v8 ∨ v1 ∨ ¬v4 ∨ ¬v12 ∨ ¬v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v9 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u9 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u11 : v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a n1
    have u12 : v7 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    rcases c22 with a|a|a
    · exact absurd n2 a
    · exact absurd u11 a
    · exact absurd u12 a
  have c2526 : ¬v20 ∨ v1 ∨ ¬v4 ∨ ¬v12 ∨ v48 ∨ v49 := by
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
    have u4 : v8 := by
      rcases c2525 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u4 a
      · exact absurd n3 a
      · exact a
    have u7 : v7 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u4 a
    have u8 : v2 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
    rcases c22 with a|a|a
    · exact absurd n2 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c2527 : ¬v8 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v13 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u2
    have u8 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u18 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u19 : v5 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd n5 a
      · exact a
    have u20 : v4 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u21 : ¬v27 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u23 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a n7
      · exact a
      · exact absurd a u13
    have u24 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u25 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    rcases c2482 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a n8
    · exact absurd a n9
  have c2528 : ¬v12 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v20 := by
      rcases c2526 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v5 := by
      rcases c2524 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u11 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u12 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v8 := by
      rcases c2527 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v14 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact a
      · exact absurd a u3
    have u16 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v9 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd a u16
    have u18 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u19 : v17 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u22 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u23 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u20
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    rcases c103 with a|a
    · exact absurd u23 a
    · exact absurd u21 a
  exact ⟨c2479, c2482, c2486, c2488, c2496, c2497, c2502, c2507, c2510, c2514, c2515, c2516, c2517, c2528⟩
