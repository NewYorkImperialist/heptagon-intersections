import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2150-2199 of the 2934-step refutation of ccase002: 121 core clauses and 87 earlier-derived ones give 13 more. -/
theorem CCase002_block043
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c100 : ¬v22 ∨ ¬v23)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
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
    (c133 : ¬v31 ∨ ¬v32)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c142 : ¬v34 ∨ ¬v35)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c167 : ¬v47 ∨ ¬v43)
    (c172 : ¬v44 ∨ ¬v47)
    (c176 : ¬v45 ∨ ¬v47)
    (c179 : ¬v46 ∨ ¬v47)
    (c182 : ¬v47 ∨ ¬v48)
    (c183 : ¬v49 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c223 : ¬v47 ∨ v36 ∨ v40 ∨ v12 ∨ v4 ∨ v11 ∨ v1 ∨ v46 ∨ v41 ∨ v43 ∨ v5 ∨ v13 ∨ v48 ∨ v49)
    (c236 : v16 ∨ v20 ∨ v8 ∨ v19 ∨ v27 ∨ v26 ∨ v6 ∨ v2 ∨ v12 ∨ v14 ∨ v28 ∨ v9 ∨ v7 ∨ ¬v13)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c335 : ¬v23 ∨ v43 ∨ v35 ∨ v24 ∨ v37 ∨ v15 ∨ v22 ∨ v28 ∨ v31 ∨ v30 ∨ v21 ∨ v16 ∨ v44 ∨ v45)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c432 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v28 ∨ v42)
    (c456 : v36 ∨ v22 ∨ v34 ∨ v28 ∨ v27 ∨ ¬v29 ∨ v1 ∨ v41 ∨ v2 ∨ v35 ∨ v7 ∨ v30 ∨ v37 ∨ v43)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c492 : ¬v47 ∨ v40 ∨ v2 ∨ v4 ∨ v41 ∨ v5 ∨ v37 ∨ v33 ∨ v34 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c501 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v29 ∨ v49 ∨ v36 ∨ v41)
    (c504 : v28 ∨ v20 ∨ v12 ∨ v5 ∨ v26 ∨ v13 ∨ v27 ∨ v7 ∨ v1 ∨ v8 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c526 : v26 ∨ v44 ∨ v3 ∨ v18 ∨ v2 ∨ v46 ∨ v45 ∨ v5 ∨ v24 ∨ v25 ∨ v12 ∨ v9 ∨ ¬v4 ∨ v11)
    (c533 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v34 ∨ v29 ∨ v28 ∨ v22)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1504 : ¬v18 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1610 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1866 : v22 ∨ v9 ∨ v14 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c1953 : ¬v23 ∨ v8 ∨ ¬v15 ∨ ¬v20)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2250 : ¬v1 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v49)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2347 : ¬v31 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ ¬v23)
    (c2354 : ¬v5 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2391 : v47 ∨ v48 ∨ v49)
    (c2405 : ¬v38 ∨ ¬v32 ∨ v44 ∨ v45 ∨ v46)
    (c2408 : ¬v32 ∨ v6 ∨ v13 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2414 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2437 : v37 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v36 ∨ ¬v39 ∨ v43 ∨ v45 ∨ v46)
    (c2454 : ¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2476 : v41 ∨ v6 ∨ v13 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2489 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2520 : v40 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v48 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2541 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v48 ∨ v49)
    (c2550 : v13 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v19 ∨ v21 ∨ v24 ∨ ¬v29 ∨ v48 ∨ v49)
    (c2556 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v27 ∨ v28 ∨ v48 ∨ v49)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2580 : ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2594 : v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2595 : ¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2651 : ¬v3 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2656 : v9 ∨ v23 ∨ v48 ∨ v49)
    (c2664 : ¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48)
    (c2680 : v19 ∨ v17 ∨ v20 ∨ v23 ∨ v48 ∨ v49)
    (c2683 : ¬v3 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v40 ∨ ¬v41 ∨ ¬v47 ∨ v48)
    (c2708 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v20 ∨ v27 ∨ v28)
    (c2709 : v1 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ v48 ∨ v49)
    (c2710 : ¬v15 ∨ v8 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27)
    (c2719 : v20 ∨ v23 ∨ v48 ∨ v49)
    (c2720 : ¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23)
    (c2721 : ¬v1 ∨ v23 ∨ v24 ∨ v25 ∨ v48 ∨ v49)
    (c2731 : v24 ∨ v16 ∨ v23 ∨ v48 ∨ v49)
    (c2733 : v16 ∨ v23 ∨ v48 ∨ v49)
    (c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20)
    : (v23 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27) ∧ (¬v20 ∨ v48 ∨ v49) ∧ (¬v8 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v42) ∧ (¬v41 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49) ∧ (v30 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42) ∧ (¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46) ∧ (¬v7 ∨ ¬v6 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19) ∧ (v21 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v28 ∨ v48 ∨ v49) ∧ (v12 ∨ v48 ∨ v49) ∧ (v15 ∨ ¬v7 ∨ v48 ∨ v49) := by
  have c2735 : v28 ∨ v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
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
    have u11 : v20 := by
      rcases c2719 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u11 a
      · exact absurd a n1
    have u13 : v16 := by
      rcases c2733 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u13 a
      · exact absurd u11 a
    have u15 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u11 a
    have u18 : v27 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u6
    have u19 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v1 := by
      rcases c2721 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
    have u22 : v7 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
    have u24 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n3
  have c2736 : v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v9 := by
      rcases c2656 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v28 := by
      rcases c2735 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v16 := by
      rcases c2731 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
    have u16 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
    have u17 : v17 := by
      rcases c2680 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v15 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
    have u20 : ¬v29 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd u14 a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u21 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u20
      · exact a
    have u22 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
    have u23 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
    have u24 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u6
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u10
    have u26 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u11
      · exact a
      · exact absurd a u24
    have u27 : v40 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    rcases c161 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2737 : v1 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v21 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v7 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u15 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u10 a
    rcases c2664 with a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd u1 a
    · exact absurd a n7
  have c2738 : ¬v16 ∨ v8 ∨ v10 ∨ v17 ∨ ¬v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
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
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u17 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v1 := by
      rcases c2737 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
    have u23 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u7
    have u24 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u25 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    rcases c2664 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd u4 a
    · exact absurd a n5
  have c2739 : v10 ∨ v8 ∨ v17 ∨ ¬v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n4
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
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v15 := by
      rcases c1953 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
    have u11 : ¬v16 := by
      rcases c2738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u2 a
    have u13 : ¬v33 := by
      rcases c1972 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
    have u14 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u9
    have u15 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u20 : v3 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    have u21 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
    rcases c1844 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n5
  have c2740 : ¬v16 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2741 : v17 ∨ v8 ∨ ¬v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
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
    have u11 : ¬v15 := by
      rcases c1953 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
    have u12 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    have u13 : v10 := by
      rcases c2739 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v16 := by
      rcases c2740 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v1 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u17 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u2 a
    have u18 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u9
  have c2742 : ¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : v13 := by
      rcases c2228 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
  have c2743 : v15 ∨ ¬v8 ∨ v16 ∨ v18 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
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
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v33 := by
      rcases c1972 with a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    have u15 : ¬v17 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u1
    have u16 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd u6 a
    have u17 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v39 := by
      rcases c2489 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u20 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n4
    have u21 : v3 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u22 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    have u23 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u20 a
    rcases c1446 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c2744 : ¬v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
    have u9 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
    have u10 : v8 := by
      rcases c2741 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v16 := by
      rcases c2740 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    have u15 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u7
    have u16 : v15 := by
      rcases c2743 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n0 a
    have u18 : ¬v19 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u11
  have c2745 : ¬v41 ∨ ¬v3 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2683 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n7 a
    · exact absurd a n8
  have c2746 : ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    rcases c2745 with a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u3 a
    · exact absurd a n6
  have c2747 : v18 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c2746 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    have u16 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u17 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c2405 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u20 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v4 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u11
    have u22 : ¬v2 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u23 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u20 a
    rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd u21 a
    · exact absurd a n3
  have c2748 : v17 ∨ ¬v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
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
    have u6 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v3 := by
      rcases c2746 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
    have u18 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v31 := by
      rcases c2595 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v18 := by
      rcases c2747 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u22 : ¬v15 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd u21 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
    have u23 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd u21 a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
    have u24 : v16 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
    rcases c77 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u21 a
  have c2749 : ¬v18 ∨ ¬v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u4 : v17 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u8 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u9 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v33 := by
      rcases c1972 with a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
    have u14 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u6 a
    have u15 : v1 := by
      rcases c2556 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v6 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v35 := by
      rcases c2541 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u12
  have c2750 : ¬v4 ∨ ¬v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
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
    have u6 : v17 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v18 := by
      rcases c2749 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : v16 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u2
    have u17 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
    have u18 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u6 a
    have u20 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u6 a
    have u21 : v7 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u17
    have u22 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u21 a
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd u21 a
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n3
  have c2751 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c106 with a|a
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
    have u11 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n0
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u13 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    have u17 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
    have u18 : v31 := by
      rcases c2489 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c2437 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
  have c2752 : ¬v8 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : v17 := by
      rcases c2748 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u21 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
    have u22 : ¬v4 := by
      rcases c2750 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u23 : ¬v18 := by
      rcases c2749 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u24 : v16 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u2
    have u25 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v29 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd u24 a
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u28 : v32 := by
      rcases c2751 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a n2
    have u29 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
    have u30 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u28 a
      · exact a
    have u33 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u28 a
    have u34 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u35 : v6 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
    have u36 : v39 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u34
    have u37 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a n1
      · exact absurd a n2
    have u38 : ¬v42 := by
      rcases c501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u29
      · exact absurd a u37
    have u39 : ¬v1 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact absurd u35 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
    have u40 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u36 a
      · exact a
    have u41 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u33
      · exact absurd a u37
      · exact absurd a n2
    have u42 : v5 := by
      rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u29
      · exact absurd a u40
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u39
      · exact absurd a u16
      · exact absurd a u37
      · exact absurd a u19
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    rcases c33 with a|a|a
    · exact absurd u42 a
    · exact absurd u35 a
    · exact absurd u41 a
  have c2753 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v13 ∨ v36 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
  have c2754 : v49 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ ¬v32 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u7 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u8 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
    have u12 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u8 a
    have u20 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u21 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n0
    have u22 : v15 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u21 a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
    have u23 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
    have u24 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
    have u25 : ¬v42 := by
      rcases c501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u11
    have u26 : ¬v38 := by
      rcases c2405 with a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u27 : v39 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u26
    have u28 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v7 := by
      rcases c2753 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n0
    have u30 : v5 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n0
    have u31 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u21 a
    have u32 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u21 a
    have u33 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u17
      · exact a
      · exact absurd a n1
    have u34 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u33
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u2
    have u35 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u34 a
    have u36 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u34 a
    have u37 : v14 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u29
      · exact a
      · exact absurd a u35
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n0
    have u38 : v9 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u36
      · exact absurd u34 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u16
      · exact a
    rcases c46 with a|a
    · exact absurd u38 a
    · exact absurd u37 a
  have c2755 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c2756 : ¬v41 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c2755 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
  have c2757 : v30 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n3 a
      · exact a
    rcases c432 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
  have c2758 : ¬v29 ∨ v22 ∨ v28 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v30 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c122 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c2759 : v32 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n0
    have u9 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u13 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
    have u14 : v29 := by
      rcases c2751 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    rcases c2489 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u6
  have c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u5 : v47 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u6 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v48 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u20 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
    have u21 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v18 := by
      rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd n1 a
      · exact absurd a n3
    have u24 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
    have u25 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v29 := by
      rcases c2758 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u27
    have u30 : v17 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u6
    have u31 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u17
    rcases c63 with a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd u23 a
  have c2761 : ¬v6 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n7
  have c2762 : v10 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
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
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v32 := by
      rcases c2754 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u16 : v4 := by
      rcases c2759 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v6 := by
      rcases c2761 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v29 := by
      rcases c2758 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
    have u26 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u9
    have u27 : ¬v3 := by
      rcases c2745 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n5
    have u28 : v17 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u29 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u28 a
    have u30 : v14 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u18
      · exact a
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd u30 a
    · exact absurd a u4
    · exact absurd a u18
  have c2763 : v11 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v13 ∨ v18 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v10 := by
      rcases c2762 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u18 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u19 : ¬v1 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u18
      · exact a
      · exact absurd a u6
    have u20 : ¬v6 := by
      rcases c2761 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v32 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    have u22 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v21 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
    have u28 : ¬v35 := by
      rcases c2755 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u24
    have u29 : v15 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd u27 a
      · exact absurd a u12
      · exact absurd a u9
    have u30 : ¬v17 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
    have u31 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u29 a
    have u32 : ¬v34 := by
      rcases c1850 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a u31
      · exact absurd a u30
      · exact a
    have u33 : ¬v33 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u32
    rcases c2541 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u28
    · exact absurd a n6
    · exact absurd a n7
  have c2764 : v7 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c2762 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2763 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v32 := by
      rcases c2759 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : v6 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u26 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a n6
    have u28 : v15 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u25 a
      · exact a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n6
    have u29 : ¬v42 := by
      rcases c501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a n6
      · exact absurd a u27
      · exact absurd a u26
    have u30 : v21 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n6
    have u31 : ¬v17 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
    have u32 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u28 a
    rcases c1901 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u20
  have c2765 : v18 ∨ v11 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v7 := by
      rcases c2764 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v10 := by
      rcases c2762 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v3 := by
      rcases c2651 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v4 := by
      rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n1
    have u21 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a n4
    have u22 : v32 := by
      rcases c2759 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : v6 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u30 : ¬v41 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a n5
    have u31 : v39 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u21
    have u32 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a n5
    have u33 : ¬v1 := by
      rcases c2454 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u34 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u31 a
      · exact a
    rcases c223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u33
    · exact absurd a u13
    · exact absurd a u30
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2766 : ¬v15 ∨ v11 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v17 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c63 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
  have c2767 : ¬v6 ∨ v4 ∨ v5 ∨ ¬v7 ∨ v15 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
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
    have u12 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n5
    have u13 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u14 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u21 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v36 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u13 a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
    have u23 : ¬v41 := by
      rcases c2414 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u22 a
    rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n5
  have c2768 : v5 ∨ v4 ∨ ¬v7 ∨ v13 ∨ v15 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v29 := by
      rcases c2758 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v1 := by
      rcases c2520 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u9
  have c2769 : ¬v5 ∨ ¬v7 ∨ v13 ∨ v15 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v29 := by
      rcases c2758 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u10
  have c2770 : ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v18 := by
      rcases c2765 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v15 := by
      rcases c2766 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v5 := by
      rcases c2769 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v4 := by
      rcases c2768 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    have u15 : v10 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u17 : v14 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u10
    rcases c50 with a|a
    · exact absurd u15 a
    · exact absurd u17 a
  have c2771 : ¬v41 ∨ v15 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v29 := by
      rcases c2758 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u13 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u9
    have u14 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
    rcases c2520 with a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u13 a
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
  have c2772 : ¬v10 ∨ v7 ∨ v15 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    rcases c1465 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
  have c2773 : v11 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u11 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v7 := by
      rcases c2770 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v18 := by
      rcases c2765 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v15 := by
      rcases c2766 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
    have u18 : ¬v41 := by
      rcases c2771 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u19 a
      · exact absurd a u17
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u21 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u22 : v5 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u20 a
    have u28 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    have u29 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u19 a
    have u30 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u27
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u31 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u32 : v36 := by
      rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u31
      · exact absurd a u14
    have u33 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v10 := by
      rcases c2772 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u33
      · exact absurd a n4
    have u35 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u11
      · exact a
      · exact absurd a u34
    have u36 : v17 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u35
      · exact absurd a u34
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u37 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u16 a
    have u38 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u16 a
    rcases c335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u31
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u37
    · exact absurd a u38
    · exact absurd a u13
    · exact absurd a u12
  have c2774 : v15 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v48 ∨ v49 := by
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
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v21 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
    have u12 : v7 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
    have u14 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
    rcases c2768 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c2775 : ¬v18 ∨ ¬v15 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c1504 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2776 : ¬v7 ∨ ¬v6 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
  have c2777 : ¬v6 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v11 := by
      rcases c2773 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u18 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u19 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n4
    have u20 : v15 := by
      rcases c2774 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u20 a
      · exact a
    have u22 : ¬v19 := by
      rcases c1866 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u20 a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u23 : ¬v18 := by
      rcases c2775 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
    have u24 : ¬v7 := by
      rcases c2776 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
    have u25 : v5 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u16
    have u27 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd n0 a
    have u28 : ¬v3 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u7
    rcases c330 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u1 a
    · exact absurd a u28
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a n1
  have c2778 : v13 ∨ v12 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u11 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v11 := by
      rcases c2773 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v6 := by
      rcases c2777 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v41 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v15 := by
      rcases c2771 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v35 := by
      rcases c2755 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u21
    have u27 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd u25 a
      · exact a
    have u28 : v3 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
    have u29 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
    have u30 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a u13
    have u31 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u21
    have u32 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u25 a
    have u33 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u27
      · exact absurd u2 a
      · exact absurd a u10
    have u34 : ¬v34 := by
      rcases c1850 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a u32
      · exact absurd a u27
      · exact a
    have u35 : ¬v33 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u33
      · exact absurd a u23
      · exact absurd a u34
    rcases c2414 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a n3
  have c2779 : v6 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v13 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v5 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v21 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n3
    have u7 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    rcases c236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd n4 a
  have c2780 : ¬v15 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v23 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v19 := by
      rcases c1866 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u7 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
    have u8 : v6 := by
      rcases c2779 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u11 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v31 := by
      rcases c2594 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v16 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u5 a
    have u17 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a u11
    rcases c62 with a|a|a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd n0 a
  have c2781 : v21 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c2771 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v1 := by
      rcases c2709 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v6 := by
      rcases c1833 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u11 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u12 : v13 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v12 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd u12 a
    rcases c54 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2782 : v7 ∨ v12 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v13 := by
      rcases c2778 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v15 := by
      rcases c2780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
    have u18 : v21 := by
      rcases c2781 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
    rcases c1262 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd u18 a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u8
  have c2783 : v12 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v8 := by
      rcases c2752 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v13 := by
      rcases c2778 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v7 := by
      rcases c2782 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u16 : v47 := by
      rcases c2391 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v46 := by
      rcases c179 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v45 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v44 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
    have u22 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v5 := by
      rcases c2354 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v38 := by
      rcases c2664 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd u16 a
      · exact absurd a n1
    have u25 : v17 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
    have u26 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
    have u27 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd u25 a
    have u28 : ¬v6 := by
      rcases c2767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd u15 a
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a n2
    have u29 : ¬v21 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
    rcases c1483 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd u10 a
    · exact absurd a u26
    · exact absurd a u1
    · exact absurd a u29
  have c2784 : v15 ∨ ¬v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v20 := by
      rcases c2744 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v23 := by
      rcases c2736 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v12 := by
      rcases c2783 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v41 := by
      rcases c2771 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v6 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u11 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    rcases c2767 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
  exact ⟨c2736, c2740, c2742, c2744, c2752, c2755, c2756, c2757, c2760, c2776, c2781, c2783, c2784⟩
