import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2350-2399 of the 2915-step refutation of ccase001: 137 core clauses and 104 earlier-derived ones give 8 more. -/
theorem CCase001_block047
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
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
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c128 : ¬v34 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v48 ∨ ¬v43)
    (c177 : ¬v48 ∨ ¬v44)
    (c181 : ¬v48 ∨ ¬v45)
    (c184 : ¬v48 ∨ ¬v46)
    (c186 : ¬v48 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c221 : v43 ∨ v36 ∨ v41 ∨ v37 ∨ v20 ∨ v35 ∨ v21 ∨ v34 ∨ v30 ∨ v44 ∨ v28 ∨ v15 ∨ ¬v42 ∨ v49)
    (c229 : ¬v42 ∨ v36 ∨ v35 ∨ v34 ∨ v7 ∨ v43 ∨ v49 ∨ v8 ∨ v40 ∨ v33 ∨ v13 ∨ v14 ∨ v47 ∨ v41)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c274 : ¬v5 ∨ v6 ∨ v13 ∨ v11 ∨ v12 ∨ v4 ∨ v46 ∨ v47)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c305 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v42 ∨ v47 ∨ v7 ∨ v6)
    (c306 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v47 ∨ v7 ∨ v5 ∨ v6)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c368 : v21 ∨ v10 ∨ v46 ∨ v14 ∨ v47 ∨ v7 ∨ v12 ∨ v13 ∨ v45 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v3 ∨ v18)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c411 : v6 ∨ v4 ∨ v13 ∨ v46 ∨ v12 ∨ v34 ∨ v47 ∨ ¬v5 ∨ v32 ∨ v33 ∨ v14 ∨ v40 ∨ v7 ∨ v49)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c427 : v13 ∨ v9 ∨ v24 ∨ v18 ∨ v4 ∨ v25 ∨ v10 ∨ v20 ∨ v2 ∨ ¬v17 ∨ v3 ∨ v19 ∨ v16 ∨ v27)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c489 : ¬v40 ∨ v33 ∨ v46 ∨ v12 ∨ v47 ∨ v11 ∨ v13 ∨ v5 ∨ v35 ∨ v39 ∨ v42 ∨ v34 ∨ v41 ∨ v49)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c543 : v15 ∨ v9 ∨ v2 ∨ v24 ∨ v8 ∨ v3 ∨ v12 ∨ v19 ∨ v18 ∨ v17 ∨ v1 ∨ v23 ∨ ¬v16 ∨ v26)
    (c552 : ¬v48 ∨ v49 ∨ v5 ∨ v40 ∨ v42 ∨ v6 ∨ v47 ∨ v41)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26)
    (c761 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1642 : ¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1688 : ¬v2 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2088 : ¬v12 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v43 ∨ v44 ∨ v45)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2306 : ¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2465 : ¬v32 ∨ v15 ∨ v16 ∨ ¬v22)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2515 : ¬v17 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2577 : ¬v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2726 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v39 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2753 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v11)
    (c2786 : v48 ∨ v49)
    (c2798 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2826 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2827 : v33 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2829 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2842 : ¬v35 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v40 ∨ v49)
    (c2846 : ¬v22 ∨ v7 ∨ v8 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v36 ∨ v37 ∨ v42 ∨ v49)
    (c2847 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42)
    (c2853 : ¬v3 ∨ v9 ∨ v49)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2884 : ¬v32 ∨ ¬v42 ∨ v49)
    (c2893 : ¬v28 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c2905 : v33 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v40 ∨ v47)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2952 : v16 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47)
    (c2953 : ¬v4 ∨ ¬v2 ∨ v3 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47)
    (c2954 : v7 ∨ v9 ∨ v22 ∨ v49)
    (c2959 : ¬v2 ∨ v9 ∨ v22 ∨ v49)
    (c2971 : v1 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v22 ∨ v49)
    (c2975 : ¬v1 ∨ v2 ∨ v4 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v49)
    (c2976 : v12 ∨ v9 ∨ v22 ∨ v49)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c2979 : ¬v38 ∨ v5 ∨ v6 ∨ v49)
    (c2981 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v49)
    (c2982 : ¬v11 ∨ v1 ∨ v9 ∨ v10 ∨ v22 ∨ v32 ∨ v49)
    (c2983 : v1 ∨ v5 ∨ v9 ∨ v10 ∨ v22 ∨ v49)
    (c2984 : ¬v17 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    : (¬v37 ∨ v5 ∨ v6 ∨ v49) ∧ (v9 ∨ v49) ∧ (¬v18 ∨ v3 ∨ v10 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45) ∧ (v11 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v37 ∨ v49) ∧ (¬v5 ∨ ¬v2 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47) ∧ (¬v37 ∨ v4 ∨ v11 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47) ∧ (v3 ∨ ¬v2 ∨ v10 ∨ v49) := by
  have c2985 : v11 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v16 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n14
    have u4 : ¬v17 := by
      rcases c2984 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u5 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n14
      · exact a
      · exact absurd a u5
      · exact absurd a n9
    have u7 : v24 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n14
    have u8 : v23 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c108 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c2987 : v17 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u4
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2988 : ¬v37 ∨ v5 ∨ v6 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v47 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u1
    rcases c186 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2989 : v31 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v13 ∨ v16 ∨ ¬v17 ∨ v21 ∨ v22 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
    have u6 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a u4
    have u7 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v24 := by
      rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n8 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u6
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v30 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c1033 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c2990 : v5 ∨ v9 ∨ v10 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v16 := by
      rcases c2981 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
    have u17 : v1 := by
      rcases c2983 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u3 a
    have u19 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u3 a
    have u20 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n4
    have u21 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n4
    have u22 : v11 := by
      rcases c2985 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u23 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u22 a
    have u24 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v28 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u9
    have u27 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u26
    have u28 : ¬v15 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u25
    have u29 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u28
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u30 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u31 : v17 := by
      rcases c2987 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u32 : v31 := by
      rcases c2989 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd u31 a
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u33 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : v24 := by
      rcases c2863 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u15
    have u35 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u33
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u4
      · exact a
    rcases c108 with a|a
    · exact absurd u35 a
    · exact absurd u34 a
  have c2991 : v10 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v16 := by
      rcases c2981 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v5 := by
      rcases c2990 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u3 a
    have u16 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u17 : ¬v11 := by
      rcases c2982 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
    have u18 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : v8 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u22 : v14 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n1
    rcases c52 with a|a|a
    · exact absurd u21 a
    · exact absurd u4 a
    · exact absurd u22 a
  have c2992 : v16 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v10 := by
      rcases c2991 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u7 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u10 : v1 := by
      rcases c2971 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v17 := by
      rcases c2515 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u7
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd u4 a
    · exact absurd a u8
  have c2993 : v22 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u3 : v16 := by
      rcases c2992 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u4 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v10 := by
      rcases c2991 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u9 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u10 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : v4 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u11
    have u13 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u14 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u15 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd u9 a
    · exact absurd a u14
  have c2994 : v11 ∨ v2 ∨ ¬v4 ∨ v9 ∨ ¬v10 ∨ ¬v16 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u4 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v8 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n4 a
    have u13 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd n2 a
    have u14 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u15 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    rcases c1240 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd u10 a
    · exact absurd a n3
    · exact absurd a u2
  have c2995 : ¬v4 ∨ v2 ∨ v9 ∨ ¬v10 ∨ ¬v16 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u7 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v11 := by
      rcases c2994 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
    have u14 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u13 a
    have u17 : v1 := by
      rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd n4 a
      · exact absurd a u10
    have u18 : v7 := by
      rcases c2577 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    rcases c12 with a|a|a
    · exact absurd u17 a
    · exact absurd n0 a
    · exact absurd u18 a
  have c2996 : ¬v10 ∨ v2 ∨ v9 ∨ ¬v16 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u8 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u9 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v4 := by
      rcases c2995 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n4
    have u16 : v11 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
    have u17 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u16 a
    have u21 : v1 := by
      rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd n3 a
      · exact absurd a u12
    have u22 : v7 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u20
      · exact a
      · exact absurd a u19
    rcases c2975 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd u22 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a n4
  have c2997 : ¬v16 ∨ v2 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u6 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v10 := by
      rcases c2996 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
    have u15 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u19 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u17
      · exact a
      · exact absurd a u15
    have u20 : v38 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u9
    have u21 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    rcases c2547 with a|a|a|a|a
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2998 : v4 ∨ v2 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v16 := by
      rcases c2997 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u4 a
    have u24 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u4 a
    have u25 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u19
      · exact absurd a u22
    have u26 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u27 : v11 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u28 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
    have u29 : v10 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u7
    have u30 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u27 a
    have u31 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u27 a
    have u32 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u27 a
    have u33 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u27 a
    have u34 : ¬v21 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u30
      · exact absurd a u33
      · exact absurd a u31
      · exact absurd a u25
      · exact a
    have u35 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u28
    have u36 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u37 : v37 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd u17 a
      · exact absurd a u28
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u36
      · exact absurd a u12
    have u38 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u37 a
    have u39 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u31
      · exact absurd a u34
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u38
    have u40 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u39 a
    have u41 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u35 a
      · exact a
      · exact absurd u39 a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u33
    · exact absurd a u41
    · exact absurd a u40
    · exact absurd u39 a
    · exact absurd a u31
    · exact absurd a u30
  have c2999 : ¬v11 ∨ v2 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v16 := by
      rcases c2997 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v19 := by
      rcases c1375 with a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u4 a
    have u24 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u19
      · exact absurd a u22
    have u25 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u26 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
    have u27 : v10 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u7
    have u28 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd n0 a
    have u29 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n0 a
    have u30 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n0 a
    have u31 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n0 a
    have u32 : ¬v21 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a u24
      · exact a
    have u33 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u26
    have u34 : v4 := by
      rcases c2998 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u35 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u33 a
      · exact absurd u34 a
      · exact a
    have u36 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u35
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u22
      · exact absurd a u11
      · exact a
    have u37 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u36 a
    have u38 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u36 a
    rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u38
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u35
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u28
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u37
  have c3000 : v2 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v11 := by
      rcases c2999 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v16 := by
      rcases c2997 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v18 := by
      rcases c1371 with a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u3 a
    have u22 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u23 : v10 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u6
    have u24 : v17 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd u23 a
    have u25 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u24 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u25
  have c3001 : ¬v4 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v12 := by
      rcases c2953 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    rcases c415 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u3
  have c3002 : v16 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ ¬v22 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u2 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : v17 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c2465 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n8 a
    have u9 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u9
  have c3003 : v32 ∨ ¬v2 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
    have u3 : v12 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u5 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u3 a
    · exact absurd a u4
  have c3004 : v11 ∨ v9 ∨ ¬v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v2 := by
      rcases c3000 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u3 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v4 := by
      rcases c3001 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    have u16 : ¬v12 := by
      rcases c2088 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
    have u18 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u19 : v16 := by
      rcases c3002 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v32 := by
      rcases c3003 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u24 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u23 a
      · exact a
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u18
  have c3005 : ¬v10 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v2 := by
      rcases c3000 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v11 := by
      rcases c3004 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u10 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u12 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u13 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u11
    have u14 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u16 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u17 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n2
    have u18 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
    have u19 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
    have u20 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u19 a
      · exact a
    rcases c2846 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd u9 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n2
  have c3006 : v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u7 : v2 := by
      rcases c3000 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u8 : v22 := by
      rcases c2993 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v10 := by
      rcases c3005 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u13 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u4
    have u14 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u13 a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u13 a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n1
    have u18 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
    have u19 : v39 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u17
      · exact a
      · exact absurd a u3
    have u20 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
    rcases c162 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c3007 : ¬v18 ∨ v3 ∨ v10 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v29 := by
      rcases c1371 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n3 a
      · exact a
    rcases c2978 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c3008 : ¬v2 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v22 ∨ v25 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v18 := by
      rcases c3007 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u6 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v19 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u3
    have u8 : v7 := by
      rcases c368 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n14
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
    have u9 : v5 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u4
    rcases c24 with a|a|a
    · exact absurd u9 a
    · exact absurd n0 a
    · exact absurd u8 a
  have c3009 : ¬v7 ∨ ¬v2 ∨ v8 ∨ v13 ∨ v14 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v43 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n2
    rcases c172 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c3010 : v10 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ ¬v11 ∨ v18 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n5 a
    have u11 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n5 a
    have u12 : v2 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
    have u13 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a u9
    have u14 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a u9
    have u15 : v19 := by
      rcases c368 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
    have u16 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u19 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u21 : v5 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n2
      · exact a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n6
    have u22 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u24 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u3
    have u25 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u21 a
      · exact absurd u12 a
      · exact a
    rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u3
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a n8
  have c3011 : ¬v18 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v38 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u5
      · exact a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    rcases c702 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u8
  have c3012 : ¬v1 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u5 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
    have u7 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u5 a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v18 := by
      rcases c3011 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : v19 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u13
    have u15 : v17 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a u13
    rcases c92 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c3013 : ¬v22 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    rcases c3008 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c3014 : v4 ∨ ¬v2 ∨ v3 ∨ v10 ∨ ¬v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n4 a
    have u11 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n4 a
    have u12 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u9
    have u13 : ¬v1 := by
      rcases c3012 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u14 : ¬v22 := by
      rcases c3013 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v7 := by
      rcases c3009 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
    have u16 : v18 := by
      rcases c3010 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd n4 a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u12
      · exact a
    have u23 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u24 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u22
      · exact a
    have u25 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u24 a
    rcases c229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u27
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u26
  have c3016 : ¬v11 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u10 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u11 : v4 := by
      rcases c3014 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u12 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u13 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u14 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n4
    have u17 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
    have u18 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
    have u19 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v22 := by
      rcases c2846 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n4
    have u22 : ¬v35 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n4
    have u23 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u6
    have u24 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u20
    have u25 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u26 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u3
    have u31 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u22
    have u32 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c2905 with a|a|a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u23
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u31
    · exact absurd a u17
    · exact absurd a u3
  have c3017 : v11 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v19 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n12
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n11
  have c3018 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c3017 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v31 := by
      rcases c2547 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n12
  have c3019 : v11 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v40 := by
      rcases c3018 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u3
    have u14 : v33 := by
      rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n10
    have u15 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
  have c3020 : ¬v5 ∨ ¬v2 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v6 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    rcases c23 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c3021 : ¬v37 ∨ v4 ∨ v11 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v30 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c1823 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n7
  have c3022 : v34 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v10 ∨ v12 ∨ v18 ∨ v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c3016 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v4 := by
      rcases c2953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : v13 := by
      rcases c3019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
    have u15 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u3 a
      · exact absurd u14 a
      · exact a
    have u16 : v6 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd u14 a
    have u17 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : v40 := by
      rcases c3018 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u5
    have u23 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u20
    have u24 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v29 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u11
    rcases c423 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u22
  have c3023 : v5 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v12 ∨ v18 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c3016 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v4 := by
      rcases c2953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v19 := by
      rcases c3022 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
    have u10 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c3024 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v17 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u2 a
      · exact a
    rcases c2636 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
  have c3027 : v18 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c3016 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v4 := by
      rcases c2953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n5
    have u16 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u17 : v13 := by
      rcases c3020 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u3 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u20 : v19 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
    have u21 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd u17 a
      · exact absurd a u18
    have u22 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u11
      · exact a
    have u25 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u26 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u27 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u24
      · exact a
    have u28 : v31 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u29 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u30 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a u29
    have u31 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : v24 := by
      rcases c2863 with a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u31
      · exact absurd a u29
    rcases c113 with a|a
    · exact absurd u32 a
    · exact absurd u30 a
  have c3028 : ¬v5 ∨ ¬v2 ∨ v4 ∨ ¬v9 ∨ v11 ∨ v12 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : v13 := by
      rcases c3020 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v48 := by
      rcases c1688 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u5 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u3 a
    have u6 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd n3 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v49 := by
      rcases c188 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v18 := by
      rcases c3027 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
    have u12 : ¬v22 := by
      rcases c3007 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v24 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    rcases c1079 with a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
  have c3029 : v37 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v18 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n10
      · exact a
    have u2 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v32 := by
      rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u2
      · exact a
      · exact absurd a u6
    have u9 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n10
    have u10 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    rcases c758 with a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u9
  have c3030 : v12 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c3016 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v4 := by
      rcases c2953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v18 := by
      rcases c3027 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v5 := by
      rcases c3028 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v37 := by
      rcases c3029 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u16 : v30 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u16 a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u3
  have c3031 : ¬v37 ∨ v3 ∨ v5 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v30 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n7
      · exact a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v18 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u8 a
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3032 : v19 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v12 := by
      rcases c3030 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u5 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact a
    have u13 : v6 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
    have u14 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u15 : ¬v37 := by
      rcases c3031 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : v18 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u1 a
    have u19 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v22 := by
      rcases c3007 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u21 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u22 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u26 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u9
    · exact absurd a u8
  have c3033 : v5 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v12 := by
      rcases c3030 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact a
    have u11 : v19 := by
      rcases c3032 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u6
    have u19 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a u17
    rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c3034 : ¬v19 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u6
    have u14 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a u12
    rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c3035 : v18 ∨ v4 ∨ v7 ∨ v11 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ v32 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a u6
    have u9 : v31 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u8 a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v38 := by
      rcases c2863 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u6
    have u13 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u11
      · exact a
    rcases c160 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c3036 : v32 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v21 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n13
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u3
    have u11 : v18 := by
      rcases c3035 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n11
      · exact a
    have u16 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u17 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a u15
      · exact a
    have u18 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u17 a
    rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n12
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a n11
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd u17 a
    · exact absurd a n13
  have c3037 : v37 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v32 := by
      rcases c3036 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n0
      · exact absurd a n12
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v42 := by
      rcases c2884 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n12
    have u13 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u11
      · exact a
      · exact absurd a u12
    have u14 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u13 a
    rcases c1755 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a u14
    · exact absurd u13 a
    · exact absurd a u7
    · exact absurd a u11
  have c3038 : v3 ∨ ¬v2 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := by
      rcases c3033 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u11 : v12 := by
      rcases c3030 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u14 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u15 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v7 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u19 : ¬v19 := by
      rcases c3034 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n3
    have u20 : v37 := by
      rcases c3037 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n3
    have u21 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u20 a
    rcases c305 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u17
  exact ⟨c2988, c3006, c3007, c3019, c3020, c3021, c3024, c3038⟩
