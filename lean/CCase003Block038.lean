import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1900-1949 of the 2559-step refutation of ccase003: 127 core clauses and 114 earlier-derived ones give 14 more. -/
theorem CCase003_block038
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c125 : ¬v29 ∨ ¬v31)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c150 : ¬v41 ∨ ¬v36)
    (c155 : ¬v41 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c170 : ¬v47 ∨ ¬v43)
    (c175 : ¬v47 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c219 : v43 ∨ v36 ∨ v27 ∨ v32 ∨ v29 ∨ v33 ∨ v34 ∨ v42 ∨ v28 ∨ v25 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c248 : v6 ∨ v4 ∨ v25 ∨ v17 ∨ v11 ∨ ¬v10 ∨ v16 ∨ v3 ∨ v12 ∨ v24 ∨ v20 ∨ v13 ∨ v23 ∨ v9)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c279 : v43 ∨ v44 ∨ ¬v23 ∨ v30 ∨ v17 ∨ v45 ∨ v18 ∨ v22 ∨ v32 ∨ v24 ∨ v16 ∨ v37 ∨ v25 ∨ v29)
    (c283 : v43 ∨ ¬v8 ∨ v15 ∨ v44 ∨ v21 ∨ v14 ∨ v12 ∨ v1 ∨ v5 ∨ v9 ∨ v19 ∨ v13 ∨ v2 ∨ v49)
    (c311 : v43 ∨ ¬v16 ∨ v44 ∨ v23 ∨ v9 ∨ v24 ∨ v2 ∨ v15 ∨ v11 ∨ v18 ∨ v17 ∨ v8 ∨ v25 ∨ v45)
    (c341 : v29 ∨ v8 ∨ v1 ∨ v7 ∨ ¬v9 ∨ v31 ∨ v23 ∨ v2 ∨ v10 ∨ v21 ∨ v16 ∨ v14 ∨ v30 ∨ v17)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c345 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c360 : ¬v47 ∨ v40 ∨ v4 ∨ v6 ∨ v5 ∨ v39 ∨ v46 ∨ v48)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c377 : v16 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v9)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c484 : ¬v47 ∨ v40 ∨ v5 ∨ v46 ∨ v39 ∨ v4 ∨ v41 ∨ v48)
    (c512 : v30 ∨ v19 ∨ v17 ∨ v32 ∨ v24 ∨ v3 ∨ ¬v10 ∨ v4 ∨ v31 ∨ v12 ∨ v16 ∨ v11 ∨ v9 ∨ v5)
    (c525 : v43 ∨ v44 ∨ v22 ∨ ¬v15 ∨ v49 ∨ v27 ∨ v21 ∨ v28 ∨ v20 ∨ v1 ∨ v13 ∨ v16 ∨ v9 ∨ v8)
    (c545 : ¬v47 ∨ v12 ∨ v2 ∨ v39 ∨ v37 ∨ v11 ∨ v40 ∨ v13 ∨ v5 ∨ v6 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c728 : v17 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1102 : ¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1215 : v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1280 : ¬v21 ∨ v22 ∨ ¬v23 ∨ ¬v25)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1390 : ¬v31 ∨ ¬v26 ∨ v27 ∨ ¬v28)
    (c1429 : ¬v19 ∨ ¬v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1717 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v44)
    (c1718 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c1730 : ¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1790 : v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32)
    (c1793 : ¬v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1932 : ¬v5 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1936 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c1992 : v32 ∨ v5 ∨ v6 ∨ v7 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v39 ∨ v41 ∨ v42 ∨ v48)
    (c2006 : ¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2091 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2113 : ¬v22 ∨ ¬v26 ∨ ¬v34)
    (c2114 : ¬v28 ∨ v19 ∨ v20 ∨ ¬v26 ∨ ¬v34 ∨ v35)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2193 : v9 ∨ v2 ∨ v8 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2202 : v30 ∨ v3 ∨ v10 ∨ v23 ∨ v47 ∨ v48 ∨ v49)
    (c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2263 : v23 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2266 : v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v14 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35)
    (c2271 : ¬v10 ∨ v1 ∨ v3 ∨ v23 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2278 : ¬v17 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c2288 : v4 ∨ v3 ∨ ¬v10 ∨ ¬v20)
    (c2298 : v1 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2305 : ¬v28 ∨ v3 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v45)
    (c2311 : ¬v33 ∨ v48 ∨ v49)
    (c2312 : ¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2318 : ¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49)
    (c2341 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2384 : v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2397 : ¬v4 ∨ ¬v1 ∨ ¬v47)
    (c2407 : v27 ∨ v10 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49)
    (c2426 : v4 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v48 ∨ v49)
    (c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2457 : ¬v1 ∨ v31 ∨ v34 ∨ v48 ∨ v49)
    (c2466 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2467 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2471 : ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v48 ∨ v49)
    (c2472 : ¬v32 ∨ v48 ∨ v49)
    (c2474 : ¬v22 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v44)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2480 : ¬v4 ∨ v3 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2482 : ¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c2490 : v41 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v48 ∨ v49)
    (c2491 : ¬v35 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v25 ∨ v28 ∨ v43 ∨ v45 ∨ v49)
    : (¬v15 ∨ v1 ∨ v8 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v25 ∨ ¬v1 ∨ v22 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v28 ∨ v27 ∨ v30 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v30 ∨ ¬v35 ∨ v48 ∨ v49) ∧ (¬v10 ∨ ¬v3 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v24 ∨ v25 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35) ∧ (v31 ∨ v27 ∨ v30 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35) ∧ (v22 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v11 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19) ∧ (v19 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v16 ∨ v17) ∧ (v3 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49) ∧ (v18 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46) := by
  have c2492 : v49 ∨ ¬v10 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v25 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u11 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n5
    have u17 : ¬v1 := by
      rcases c2452 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
    have u18 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
    have u19 : ¬v35 := by
      rcases c2491 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n0
    have u20 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u3
    have u21 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n0
    have u22 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n3
    have u23 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u16 a
    have u24 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u4
    have u25 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v22 := by
      rcases c2312 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a u19
    have u29 : v29 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u28
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n0
    have u30 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u25
      · exact a
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
    have u32 : v24 := by
      rcases c1102 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u26
      · exact absurd u31 a
      · exact a
      · exact absurd a u30
      · exact absurd a u10
      · exact absurd a u9
    rcases c97 with a|a|a
    · exact absurd u31 a
    · exact absurd u7 a
    · exact absurd u32 a
  have c2494 : ¬v15 ∨ v1 ∨ v8 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
  have c2498 : ¬v22 ∨ ¬v25 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v17 := by
      rcases c2312 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
    have u10 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u8 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u7
  have c2499 : v28 ∨ v1 ∨ v8 ∨ v27 ∨ v30 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v25 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c2492 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v31 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n8
    have u11 : ¬v22 := by
      rcases c2498 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v23 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
    have u13 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n2
      · exact a
    have u14 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u12 a
      · exact absurd u1 a
      · exact a
    have u15 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u12 a
    have u16 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u13 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u4
  have c2500 : v22 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v10 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v15 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n10
    have u10 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u9 a
      · exact absurd n6 a
      · exact a
    have u11 : v31 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u12 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u9 a
    have u13 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u11 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u14
  have c2501 : v30 ∨ v1 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v8 := by
      rcases c2499 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u14 : v31 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n4
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n7
    have u19 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
    have u20 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
    have u22 : v22 := by
      rcases c2500 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u4
    have u23 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u22 a
    have u24 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u4
    have u25 : v15 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u24
      · exact a
      · exact absurd a n0
    have u26 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a n0
    rcases c60 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c2502 : ¬v8 ∨ ¬v1 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v31 := by
      rcases c2457 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u19 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n4
    have u20 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v25 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
    have u23 : ¬v39 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u24 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
    have u26 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
    have u27 : v40 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
    have u28 : v22 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u24
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n7
    have u29 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u28 a
    have u31 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd u28 a
      · exact absurd u21 a
      · exact a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u9
  have c2503 : v28 ∨ v13 ∨ v27 ∨ v30 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v1 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v31 := by
      rcases c2457 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u15 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n7
    have u16 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u17 : ¬v8 := by
      rcases c2502 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u19 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u20 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n4
    have u21 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v10 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd u20 a
    have u25 : v26 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd u20 a
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    have u26 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a n7
    have u27 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u18
      · exact a
      · exact absurd a u23
    have u28 : ¬v39 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u29 : ¬v23 := by
      rcases c2110 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u25 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u30 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u1 a
    have u31 : v40 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u32 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a u5
    rcases c158 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2504 : v23 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v30 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v24 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n11
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u1 a
    have u4 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
    have u5 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n17
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n16
      · exact a
      · exact absurd a n9
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c2505 : v34 ∨ v27 ∨ v28 ∨ v30 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v13 := by
      rcases c2503 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v31 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n6
    have u19 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u20 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v1 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u23 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u24 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u25 : v25 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v39 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u27 : v40 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : v23 := by
      rcases c2504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd u25 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n6
    have u30 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u29 a
      · exact absurd u25 a
      · exact a
    have u31 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u29 a
      · exact absurd u25 a
      · exact a
    have u32 : ¬v21 := by
      rcases c1280 with a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u29 a
      · exact absurd u25 a
    have u33 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u29 a
    have u34 : v17 := by
      rcases c728 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u30
      · exact absurd u25 a
      · exact absurd a u33
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u35 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u25 a
      · exact absurd a u33
      · exact absurd a n1
      · exact absurd a u17
    have u36 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u34 a
    rcases c393 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u36
    · exact absurd a u24
    · exact absurd a u35
    · exact absurd a u32
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd u8 a
  have c2506 : v23 ∨ ¬v1 ∨ v3 ∨ v8 ∨ v22 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u2 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u3 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v4 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u5 : ¬v19 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
    have u6 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a u5
    have u7 : ¬v17 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a u7
    have u9 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd u8 a
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u2
  have c2507 : ¬v25 ∨ ¬v1 ∨ v22 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v8 := by
      rcases c2506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u8 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n11
    have u10 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c2508 : v10 ∨ ¬v1 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v17 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v23 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a u3
    rcases c98 with a|a|a
    · exact absurd n4 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2509 : ¬v1 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ ¬v34 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n7 a
    have u2 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v25 := by
      rcases c2507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v10 := by
      rcases c2508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u13 : v24 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n12
    have u14 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a u3
    rcases c2006 with a|a|a|a
    · exact absurd n7 a
    · exact absurd a u14
    · exact absurd u13 a
    · exact absurd n1 a
  have c2510 : v8 ∨ v1 ∨ v22 ∨ ¬v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v23 := by
      rcases c1561 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    rcases c800 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2511 : v41 ∨ v27 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v34 := by
      rcases c2505 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v26 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u10
      · exact a
    have u16 : ¬v22 := by
      rcases c2113 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u8 a
    have u17 : ¬v1 := by
      rcases c2509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u18 : v8 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n5
    have u19 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
    have u25 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
    have u26 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
    have u28 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    have u29 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    have u30 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    have u31 : ¬v25 := by
      rcases c2500 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd u18 a
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u4
    have u32 : v24 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u28
      · exact a
      · exact absurd a u31
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u6
    have u33 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u11
    rcases c2006 with a|a|a|a
    · exact absurd u8 a
    · exact absurd a u33
    · exact absurd u32 a
    · exact absurd u15 a
  have c2512 : v1 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v41 := by
      rcases c2511 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : v34 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    have u20 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u21 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n4
    have u22 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u24 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u24 a
    have u26 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u24 a
    have u27 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u24 a
    have u28 : ¬v25 := by
      rcases c2500 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u17
    have u29 : v24 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u25
      · exact a
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u19
    have u30 : v23 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
    have u31 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u28
      · exact a
      · exact absurd a u10
      · exact absurd a u13
    have u32 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u23
    have u33 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u30 a
    have u34 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u31 a
      · exact a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u31 a
    · exact absurd a u33
    · exact absurd a u28
    · exact absurd a u34
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u32
  have c2513 : v35 ∨ v1 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c2511 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v34 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v8 := by
      rcases c2512 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v15 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u16 : v23 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u10
    have u17 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a n4
    have u21 : v9 := by
      rcases c2494 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u22 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u13
    have u23 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u22 a
    have u26 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
    have u27 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u28 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
    rcases c32 with a|a|a
    · exact absurd u28 a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2515 : v38 ∨ v1 ∨ v8 ∨ v14 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n17
      · exact absurd a n15
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u11 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u12 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u13 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c2474 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u5
    have u15 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a u7
    have u16 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v18 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a u16
      · exact a
    have u19 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n11
      · exact a
    rcases c71 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2516 : v28 ∨ v1 ∨ v8 ∨ v14 ∨ v27 ∨ v30 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v22 := by
      rcases c2513 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v41 := by
      rcases c2511 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v34 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v26 := by
      rcases c2113 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v19 := by
      rcases c1429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u18 : v21 := by
      rcases c2515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v24 := by
      rcases c2039 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u20 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v13 := by
      rcases c2475 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u23 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
    have u27 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u20
    have u28 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    have u29 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u24
    · exact absurd u22 a
    · exact absurd a n3
    · exact absurd a u21
  have c2517 : ¬v21 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v22 ∨ v25 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v24 := by
      rcases c2039 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n13 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n13 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n13 a
      · exact a
    have u7 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u2
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
    have u9 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u11 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n13 a
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a n11
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n12
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n14
  have c2518 : v30 ∨ v1 ∨ v8 ∨ v27 ∨ v28 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v22 := by
      rcases c2513 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v41 := by
      rcases c2511 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v34 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v14 := by
      rcases c2516 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v21 := by
      rcases c2517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n6
    have u24 : ¬v3 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n1
      · exact a
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd a u13
    have u25 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u21
    have u26 : v23 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
    have u27 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u1 a
    have u28 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u15
      · exact a
    have u29 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u28 a
    rcases c1080 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u16
  have c2519 : v35 ∨ v1 ∨ v27 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v41 := by
      rcases c2511 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : v34 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v8 := by
      rcases c2518 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : v22 := by
      rcases c2513 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v26 := by
      rcases c2113 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u13 a
    have u24 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
    have u26 : ¬v21 := by
      rcases c2517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd u22 a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n5
    have u27 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n3
    have u28 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u28 a
    have u30 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u28 a
    have u31 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u28 a
    have u32 : v15 := by
      rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u15 a
      · exact a
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u31
      · exact absurd a n6
    have u33 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u30
      · exact absurd a u12
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u6
    rcases c62 with a|a
    · exact absurd u32 a
    · exact absurd u33 a
  have c2520 : ¬v35 ∨ v27 ∨ v28 ∨ ¬v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v22 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u2
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c2314 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
  have c2521 : ¬v8 ∨ ¬v1 ∨ v21 ∨ v28 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n3
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u6 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    rcases c360 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n9
  have c2522 : v8 ∨ ¬v1 ∨ v39 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    have u7 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
    rcases c360 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n4
  have c2523 : v28 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v41 := by
      rcases c2511 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v35 := by
      rcases c2520 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v34 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v1 := by
      rcases c2519 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u18 : v8 := by
      rcases c2522 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v21 := by
      rcases c2521 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u16 a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v22 := by
      rcases c1365 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u26 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u23
    rcases c1984 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd u26 a
    · exact absurd a u15
  have c2524 : v35 ∨ v3 ∨ v10 ∨ v27 ∨ v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v34 := by
      rcases c2471 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u11 : ¬v25 := by
      rcases c2305 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
    have u12 : v24 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u13 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u12 a
    have u14 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u3
    rcases c1214 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a u8
    · exact absurd a n0
  have c2525 : ¬v28 ∨ v30 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n2 a
      · exact a
    rcases c2471 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
  have c2526 : v25 ∨ v3 ∨ ¬v10 ∨ v23 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v1 := by
      rcases c2271 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u8 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u9 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
    have u10 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v24 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u3
  have c2527 : ¬v25 ∨ v3 ∨ ¬v10 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u5 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n9
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
    have u12 : v1 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v4 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u14
  have c2528 : v3 ∨ v27 ∨ v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v34 := by
      rcases c2471 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
    have u15 : v10 := by
      rcases c2524 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v25 := by
      rcases c2527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    rcases c2526 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
  have c2529 : ¬v10 ∨ ¬v3 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u6 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v22 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u8 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
    have u12 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
    have u13 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u14 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u15 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u15 a
      · exact a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u15 a
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n11
  have c2530 : ¬v34 ∨ v1 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v10 ∨ v11 ∨ v14 ∨ v17 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v35 ∨ v39 ∨ v42 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u5 : ¬v49 := by
      rcases c186 with a|a
      · exact a
      · exact absurd n17 a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n17 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd n17 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n17 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n17 a
      · exact a
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u13 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a u6
    have u15 : v9 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u16 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v16 := by
      rcases c341 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u15 a
      · exact absurd a n13
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n8
    have u19 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v22 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u7
      · exact absurd a u5
    have u23 : ¬v26 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd n0 a
      · exact absurd a n14
    have u24 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u22 a
      · exact absurd n11 a
      · exact a
    have u25 : v41 := by
      rcases c1992 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n10
      · exact absurd n0 a
      · exact absurd a n15
      · exact a
      · exact absurd a n16
      · exact absurd a n18
    have u26 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u25 a
      · exact a
    rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n17 a
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a n15
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n18
  have c2531 : ¬v3 ∨ v1 ∨ v8 ∨ v10 ∨ v11 ∨ v14 ∨ v24 ∨ v25 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v42 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n14 a
    have u2 : ¬v49 := by
      rcases c186 with a|a
      · exact a
      · exact absurd n17 a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n17 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n17 a
      · exact a
    have u5 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u3
    have u6 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u7 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v4 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n14 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd n17 a
      · exact absurd a n18
    have u9 : v22 := by
      rcases c2426 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a u2
    have u10 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a u5
    have u11 : ¬v26 := by
      rcases c2113 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n14 a
    have u12 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u10 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u11
  have c2532 : v25 ∨ v8 ∨ v14 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v3 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v34 := by
      rcases c2471 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
    have u13 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u14 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u17 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
    have u18 : ¬v10 := by
      rcases c2529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u19 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a n0
    have u20 : v11 := by
      rcases c2531 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n7
    have u21 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v2 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u23 : ¬v4 := by
      rcases c1717 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
    have u24 : v22 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u25 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u22 a
      · exact absurd u5 a
      · exact a
    have u27 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u22 a
      · exact absurd u5 a
      · exact a
    have u28 : ¬v26 := by
      rcases c2113 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u6 a
    have u29 : v40 := by
      rcases c360 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n7
    have u30 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u29 a
    rcases c1992 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a n4
    · exact absurd u6 a
    · exact absurd a u12
    · exact absurd a u30
    · exact absurd a u15
    · exact absurd a n7
  have c2533 : v25 ∨ v8 ∨ v10 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v3 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u12 : v14 := by
      rcases c2532 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v4 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
    have u15 : v2 := by
      rcases c2193 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    rcases c1717 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd u14 a
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u6
  have c2534 : ¬v24 ∨ v25 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c111 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
    rcases c1215 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2535 : v25 ∨ v27 ∨ v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v3 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u14 : v34 := by
      rcases c2471 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c2534 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v23 := by
      rcases c2257 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u18 : ¬v10 := by
      rcases c2529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u19 : v8 := by
      rcases c2533 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
    have u23 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u22 a
    have u24 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u22 a
    have u25 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u7
    have u26 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u27 : v15 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u20
      · exact a
      · exact absurd a u25
    rcases c60 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2536 : v31 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v3 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u13 : v25 := by
      rcases c2535 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u13 a
    have u17 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u13 a
    have u18 : v34 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u10
    have u19 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u6
    have u26 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n4
    have u27 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u28 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u25 a
      · exact absurd u1 a
      · exact a
    rcases c1136 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u11
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u24
  have c2537 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
    have u2 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
    have u4 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n6
  have c2538 : v22 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n10
      · exact a
    have u3 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v23 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u2 a
    rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd u4 a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n17
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n7
  have c2539 : ¬v11 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
  have c2541 : v19 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c2539 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c2542 : v2 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v16 := by
      rcases c1718 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n6
  have c2543 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n0 a
  have c2544 : v3 ∨ v1 ∨ v2 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n7
    rcases c2543 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2545 : v20 ∨ v3 ∨ ¬v4 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v27 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v31 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v6 := by
      rcases c2480 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
    have u14 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    rcases c2467 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n9
  have c2546 : v3 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2202 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v31 := by
      rcases c2528 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v26 := by
      rcases c1390 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n8
      · exact absurd u4 a
    have u14 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u17 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v25 := by
      rcases c2537 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u20 : ¬v11 := by
      rcases c2542 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u6
    have u21 : v16 := by
      rcases c2544 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u6
    have u22 : ¬v9 := by
      rcases c2545 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v8 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u21 a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n4
      · exact a
      · exact absurd a u18
      · exact absurd a u9
    have u27 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n10
    rcases c2480 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd u30 a
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u9
    · exact absurd a u8
  have c2547 : v18 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v19 := by
      rcases c2541 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c989 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  exact ⟨c2494, c2507, c2523, c2525, c2529, c2534, c2536, c2537, c2538, c2539, c2541, c2543, c2546, c2547⟩
