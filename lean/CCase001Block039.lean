import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1950-1999 of the 2915-step refutation of ccase001: 128 core clauses and 78 earlier-derived ones give 14 more. -/
theorem CCase001_block039
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c38 : v4 ∨ v6 ∨ v3 ∨ v2 ∨ v1 ∨ v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
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
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c98 : ¬v19 ∨ ¬v20)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v24)
    (c119 : ¬v28 ∨ ¬v25)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c149 : ¬v40 ∨ ¬v36)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c171 : ¬v47 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c183 : ¬v46 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c222 : v6 ∨ v13 ∨ v33 ∨ v31 ∨ v45 ∨ v12 ∨ v3 ∨ v11 ∨ v5 ∨ v39 ∨ ¬v4 ∨ v32 ∨ v46 ∨ v48)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c256 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v38 ∨ v31 ∨ v25 ∨ v24)
    (c258 : v36 ∨ ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v18 ∨ v31 ∨ v22 ∨ v26 ∨ v17 ∨ v33 ∨ v30 ∨ v19 ∨ v29)
    (c270 : v36 ∨ v22 ∨ v23 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37)
    (c292 : v22 ∨ ¬v15 ∨ v14 ∨ v11 ∨ v16 ∨ v21 ∨ v17 ∨ v2 ∨ v23 ∨ v18 ∨ v7 ∨ v1 ∨ v8 ∨ v25)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c380 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v4 ∨ v39 ∨ v5 ∨ v48)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c437 : ¬v39 ∨ v32 ∨ v45 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c468 : v6 ∨ v3 ∨ ¬v10 ∨ v13 ∨ v9 ∨ v11 ∨ v12 ∨ v2 ∨ v18 ∨ v17 ∨ v20 ∨ v44 ∨ v45 ∨ v46)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c565 : v43 ∨ v29 ∨ v21 ∨ v34 ∨ v49 ∨ v23 ∨ v30 ∨ ¬v22 ∨ v36 ∨ v20 ∨ v44 ∨ v15 ∨ v28 ∨ v27)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c593 : v5 ∨ ¬v4 ∨ v9 ∨ v24 ∨ v3 ∨ v2 ∨ v11 ∨ v26 ∨ v12 ∨ v18 ∨ v25 ∨ v44 ∨ v45 ∨ v46)
    (c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1461 : v30 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1977 : v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2099 : ¬v15 ∨ v8 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c2126 : ¬v20 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2172 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2243 : ¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2296 : ¬v23 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2299 : v13 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2329 : v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2382 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2415 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c2416 : ¬v16 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2433 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2434 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2482 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2486 : ¬v34 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c2497 : ¬v21 ∨ v48 ∨ v49)
    (c2502 : ¬v13 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v48 ∨ v49)
    (c2507 : ¬v20 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2537 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c2538 : v19 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v20 ∨ v48 ∨ v49)
    (c2542 : ¬v41 ∨ v2 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2558 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2562 : ¬v7 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2570 : v9 ∨ v2 ∨ ¬v4 ∨ v10 ∨ v13 ∨ v48 ∨ v49)
    (c2573 : v10 ∨ ¬v4 ∨ v48 ∨ v49)
    (c2574 : ¬v13 ∨ ¬v4 ∨ v48 ∨ v49)
    (c2576 : v9 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v48 ∨ v49)
    (c2577 : ¬v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2578 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v43 ∨ v48 ∨ v49)
    : (¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49) ∧ (v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23) ∧ (v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46) ∧ (¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v4 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v30 ∨ ¬v39 ∨ v45 ∨ v46) ∧ (v31 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v30 ∨ v33 ∨ v44 ∨ v45 ∨ v46) ∧ (v15 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v16 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46) ∧ (v2 ∨ v1 ∨ v7 ∨ v48 ∨ v49) ∧ (v11 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v48 ∨ v49) := by
  have c2579 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2578 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c2580 : ¬v35 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
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
    have u10 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u12 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v15 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v27 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a u2
    rcases c2579 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a n9
  have c2581 : v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n7 a
      · exact a
    rcases c292 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd n7 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
  have c2583 : v14 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v13 := by
      rcases c2574 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n1 a
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
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v7 := by
      rcases c2562 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v1 := by
      rcases c2577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u10 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v9 := by
      rcases c2576 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u12 a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v6 := by
      rcases c2558 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v35 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v15 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd a u17
    have u20 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v5 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u9
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v2 := by
      rcases c2581 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u24
    rcases c20 with a|a|a
    · exact absurd u25 a
    · exact absurd n1 a
    · exact absurd u26 a
  have c2584 : v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c2574 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v14 := by
      rcases c2583 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
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
    have u5 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u3
    have u7 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd u5 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
    have u16 : v15 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd u2 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
    have u17 : v17 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u5 a
    rcases c81 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c2585 : v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v13 := by
      rcases c2574 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v14 := by
      rcases c2583 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
    have u13 : v7 := by
      rcases c2584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u15 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u16 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
    have u19 : ¬v41 := by
      rcases c2542 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n3
    have u20 : v17 := by
      rcases c468 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u25 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u23
    have u26 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u27 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u24
      · exact a
      · exact absurd a n2
    rcases c106 with a|a
    · exact absurd u27 a
    · exact absurd u25 a
  have c2586 : v8 ∨ ¬v4 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v1 := by
      rcases c2585 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v14 := by
      rcases c2583 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v9 := by
      rcases c57 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    rcases c513 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd u1 a
  have c2587 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c437 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
  have c2588 : ¬v35 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c2587 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n11
  have c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    rcases c335 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n3
  have c2590 : ¬v1 ∨ ¬v4 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
      rcases c2574 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v8 := by
      rcases c2586 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v9 := by
      rcases c39 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u14 a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v35 := by
      rcases c2588 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
    have u20 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u21 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u19
      · exact a
      · exact absurd a u20
    have u22 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact a
    have u26 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u22
    rcases c593 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
  have c2591 : ¬v4 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c2574 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v1 := by
      rcases c2590 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : v8 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v9 := by
      rcases c39 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v6 := by
      rcases c2558 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u10
    have u13 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u10
    have u14 : ¬v20 := by
      rcases c2126 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd u4 a
    have u15 : v5 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n0 a
    have u18 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a u7
      · exact a
    have u19 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u18 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd u4 a
  have c2592 : v9 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ ¬v10 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
    have u2 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
    have u3 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u15 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
  have c2593 : v14 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v9 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u8 : v3 := by
      rcases c38 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
    have u9 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v8 := by
      rcases c2592 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v35 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v15 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u14 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u15
  have c2594 : v14 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v35 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v15 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u8
      · exact a
      · exact absurd a u10
    have u13 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v29 := by
      rcases c2537 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u8
    have u16 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u13
    have u17 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    rcases c2482 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a n8
  have c2595 : v2 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c176 with a|a
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
    have u6 : v3 := by
      rcases c38 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
    have u7 : v9 := by
      rcases c2593 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v8 := by
      rcases c2594 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
  have c2596 : v6 ∨ v1 ∨ v2 ∨ v7 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c176 with a|a
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
    have u7 : v3 := by
      rcases c38 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
    have u8 : v14 := by
      rcases c2595 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v8 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a u1
    have u10 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n2
  have c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u4
  have c2599 : v11 ∨ v2 ∨ v9 ∨ v10 ∨ v12 ∨ v16 ∨ v17 ∨ v19 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
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
    have u7 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
    have u8 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u9 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u12 : v18 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    rcases c758 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u13
  have c2600 : v17 ∨ v2 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u7 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
    have u8 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u9 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u12 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v19 := by
      rcases c2599 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact a
    have u17 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    have u18 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v26 := by
      rcases c577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
    rcases c2074 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u6
  have c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2587 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c2602 : v11 ∨ v2 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v17 := by
      rcases c2600 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c2570 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u13 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u14 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u10
      · exact a
    rcases c2601 with a|a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd a u9
    · exact absurd a u8
  have c2603 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v33 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v39 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    rcases c2433 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2604 : v31 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v30 ∨ v33 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1109 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2605 : v9 ∨ v1 ∨ v2 ∨ ¬v8 ∨ v13 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
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
    have u10 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
    have u11 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n7
    have u12 : v16 := by
      rcases c2602 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u15
    have u17 : v32 := by
      rcases c2603 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    rcases c1109 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
  have c2606 : v2 ∨ v1 ∨ v7 ∨ v9 ∨ v13 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
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
    have u7 : ¬v8 := by
      rcases c2605 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v15 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd n5 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
    have u9 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n5 a
      · exact a
    have u10 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u16 : v11 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u16 a
    have u18 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u16 a
    have u19 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a u10
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd u19 a
    · exact absurd a u3
    · exact absurd a u6
  have c2607 : ¬v14 ∨ v1 ∨ v2 ∨ v7 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v44 := by
      rcases c176 with a|a
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
    have u6 : v9 := by
      rcases c2606 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u11 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd n0 a
      · exact a
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd u6 a
    · exact absurd a u11
  have c2608 : v16 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v10 ∨ v11 ∨ v14 ∨ v17 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
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
    have u8 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
    have u9 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u11 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u12 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a u12
    have u14 : v15 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v32 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    rcases c2436 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
  have c2609 : v11 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v14 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
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
    have u8 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u9 : v8 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd n4 a
      · exact absurd a n7
    have u10 : v17 := by
      rcases c2608 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u21 : v39 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u6
    rcases c2587 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u6
  have c2610 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u8 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u9 : v16 := by
      rcases c2609 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    rcases c2415 with a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
  have c2611 : v15 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
  have c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v39 := by
      rcases c2587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
    rcases c1196 with a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n6
  have c2613 : v2 ∨ v1 ∨ v7 ∨ ¬v9 ∨ v11 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
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
    have u8 : v10 := by
      rcases c2610 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v15 := by
      rcases c2611 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u14
      · exact a
      · exact absurd a u15
    have u17 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2581 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u19
  have c2614 : v49 ∨ v1 ∨ v2 ∨ v7 ∨ v11 ∨ v14 ∨ v16 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
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
    have u7 : ¬v9 := by
      rcases c2613 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u10 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u11 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v8 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    rcases c2611 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c2615 : v11 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
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
    have u8 : v16 := by
      rcases c2614 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    rcases c2612 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
  have c2616 : ¬v16 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v11 := by
      rcases c2615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v8 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v9 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
    rcases c40 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd u2 a
  have c2617 : v15 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c2616 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v11 := by
      rcases c2615 with a|a|a|a|a|a|a
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
    have u4 : v8 := by
      rcases c2611 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
  have c2618 : v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v15 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v16 := by
      rcases c2616 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
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
    have u5 : v22 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u6 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u12 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u13
  have c2619 : v8 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v7 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v15 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v11 := by
      rcases c2615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v16 := by
      rcases c2616 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v9 := by
      rcases c2618 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u11 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u4
    have u12 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u1
    rcases c29 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd n3 a
  have c2620 : v13 ∨ v1 ∨ v2 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v44 := by
      rcases c176 with a|a
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
    have u6 : ¬v14 := by
      rcases c2607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v11 := by
      rcases c2615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v6 := by
      rcases c2596 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v15 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v8 := by
      rcases c2619 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u7 a
    have u17 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u10
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd u17 a
    · exact absurd a u3
    · exact absurd a u5
  have c2621 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v13 := by
      rcases c2620 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
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
    have u8 : ¬v16 := by
      rcases c2616 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v11 := by
      rcases c2615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u11 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u12 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u13 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u14 : v15 := by
      rcases c2611 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n5
    have u16 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u17 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u14 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a u15
  have c2622 : v2 ∨ v1 ∨ v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v13 := by
      rcases c2620 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v14 := by
      rcases c2621 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u9 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u11 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u12 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
    rcases c2502 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
  have c2623 : v32 ∨ v4 ∨ v11 ∨ ¬v15 ∨ v24 ∨ v34 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v33 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n9
  have c2624 : ¬v15 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v38 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u4 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u8 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n10
    have u10 : ¬v34 := by
      rcases c2486 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
    have u11 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
    have u12 : v32 := by
      rcases c2623 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v28 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
    have u17 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u14
    have u18 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
    have u19 : v22 := by
      rcases c2099 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u19 a
      · exact a
    rcases c256 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u7
  have c2625 : v16 ∨ v1 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ v36 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
    have u7 : v29 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u5
    rcases c1196 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a u5
  have c2626 : v15 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
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
    have u8 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u6
    have u10 : v16 := by
      rcases c2625 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u10 a
    have u14 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a n6
    have u15 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u10 a
    have u16 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u2
      · exact a
    have u17 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n11
    have u18 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v22 := by
      rcases c258 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u17 a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u19
    have u23 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u22 a
      · exact a
    rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a n14
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd u22 a
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u13
  have c2627 : v39 ∨ v1 ∨ v8 ∨ v10 ∨ v11 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v36 ∨ v37 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v29 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v22 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n8
    rcases c1271 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u5
  have c2628 : v17 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v15 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v18 := by
      rcases c2626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c2296 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u7 : v30 := by
      rcases c2627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v22 := by
      rcases c1033 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1371 with a|a|a
    · exact absurd a u8
    · exact absurd u4 a
    · exact absurd u9 a
  have c2629 : v11 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v2 := by
      rcases c2622 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
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
    have u9 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
    have u10 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u11 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u12 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd n5 a
      · exact absurd a u4
    have u13 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n6
    have u14 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n6
    have u15 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v15 := by
      rcases c2624 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u21 : v17 := by
      rcases c2628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n0
      · exact a
    have u26 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u27 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u7
    have u28 : v29 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u4
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u29 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u4
      · exact a
    have u30 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u25 a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u19
  exact ⟨c2579, c2581, c2585, c2587, c2589, c2591, c2597, c2598, c2601, c2604, c2611, c2612, c2622, c2629⟩
