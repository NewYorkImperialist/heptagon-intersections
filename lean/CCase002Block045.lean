import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2250-2299 of the 2934-step refutation of ccase002: 110 core clauses and 84 earlier-derived ones give 12 more. -/
theorem CCase002_block045
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
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
    (c48 : ¬v10 ∨ ¬v12)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c55 : ¬v12 ∨ ¬v14)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
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
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c168 : ¬v48 ∨ ¬v43)
    (c173 : ¬v48 ∨ ¬v44)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c220 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v49 ∨ v41 ∨ v14 ∨ v13 ∨ v8 ∨ v47 ∨ v7 ∨ v36 ∨ v40 ∨ v33)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c311 : ¬v24 ∨ v31 ∨ v18 ∨ v38 ∨ v30 ∨ v25 ∨ v17 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c438 : ¬v40 ∨ v34 ∨ v12 ∨ v47 ∨ v39 ∨ v5 ∨ v11 ∨ v13 ∨ v41 ∨ v33 ∨ v42 ∨ v46 ∨ v35 ∨ v49)
    (c450 : ¬v24 ∨ v31 ∨ v16 ∨ v44 ∨ v46 ∨ v45 ∨ v25 ∨ v23 ∨ v17 ∨ v32 ∨ v15 ∨ v38 ∨ v29 ∨ v22)
    (c494 : v43 ∨ v29 ∨ v21 ∨ v23 ∨ ¬v22 ∨ v30 ∨ v34 ∨ v20 ∨ v36 ∨ v15 ∨ v27 ∨ v28 ∨ v44 ∨ v49)
    (c501 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v29 ∨ v49 ∨ v36 ∨ v41)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c803 : ¬v17 ∨ ¬v14 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v24)
    (c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1298 : v3 ∨ v4 ∨ v7 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1334 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1377 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1380 : v3 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1504 : ¬v18 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1696 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v16 ∨ v17)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1904 : ¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c2013 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2025 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26)
    (c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2074 : v17 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2087 : ¬v6 ∨ ¬v9 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c2107 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v38 ∨ v45)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2310 : v3 ∨ v1 ∨ v8 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2577 : v17 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2594 : v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2595 : ¬v38 ∨ v31 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2617 : v14 ∨ v9 ∨ ¬v15 ∨ v16 ∨ ¬v20 ∨ v21 ∨ ¬v28)
    (c2620 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v44)
    (c2649 : ¬v10 ∨ v2 ∨ v3 ∨ v5 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46)
    (c2693 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49)
    (c2708 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v20 ∨ v27 ∨ v28)
    (c2710 : ¬v15 ∨ v8 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27)
    (c2723 : v15 ∨ v1 ∨ v8 ∨ v16 ∨ v28 ∨ ¬v32 ∨ v43 ∨ v49)
    (c2776 : ¬v7 ∨ ¬v6 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19)
    (c2785 : ¬v6 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ ¬v15 ∨ v18 ∨ v20 ∨ v22 ∨ v26 ∨ v43 ∨ v44 ∨ v49)
    (c2786 : ¬v19 ∨ ¬v15 ∨ v22 ∨ v25 ∨ v26 ∨ v27)
    (c2790 : v48 ∨ v49)
    (c2793 : v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2818 : v19 ∨ ¬v6 ∨ v7 ∨ v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49)
    (c2821 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c2831 : ¬v6 ∨ ¬v17 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49)
    (c2835 : v15 ∨ ¬v6 ∨ ¬v16 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49)
    : (¬v29 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49) ∧ (v32 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v29 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v22 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49) ∧ (v9 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v31 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v21 ∨ v49) ∧ (v31 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46) ∧ (v27 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v28 ∨ v49) ∧ (¬v31 ∨ ¬v6 ∨ v11 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47) ∧ (v11 ∨ ¬v6 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v44 ∨ v45) := by
  have c2836 : ¬v6 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c2831 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v7 := by
      rcases c2818 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u10 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u11 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u12 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u13 : ¬v16 := by
      rcases c2835 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u1
    have u15 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v21 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u13
    have u17 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u24 : ¬v32 := by
      rcases c2723 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a n8
    have u25 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact a
    have u26 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u28 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u25 a
    rcases c438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u28
    · exact absurd a u15
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u26
    · exact absurd a n8
  have c2837 : ¬v29 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v23 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u4 a
      · exact a
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u3
  have c2838 : ¬v15 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c1504 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2839 : v29 ∨ v2 ∨ v5 ∨ ¬v6 ∨ v9 ∨ v10 ∨ ¬v15 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v12 := by
      rcases c1904 with a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a u1
    have u3 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n20
    have u4 : ¬v23 := by
      rcases c2838 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v25 := by
      rcases c2577 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u4
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v37 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n18
    have u10 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a n19
    have u11 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n19
      · exact absurd a u3
      · exact a
    rcases c128 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c2840 : ¬v6 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v15 := by
      rcases c2836 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v17 := by
      rcases c2831 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u4 : v7 := by
      rcases c2818 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u11 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u12 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u13 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u14 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u15 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u2
    have u16 : ¬v10 := by
      rcases c1696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u2
    have u17 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u19 : ¬v18 := by
      rcases c2839 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
    have u20 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u19
    have u21 : ¬v12 := by
      rcases c2785 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u22 : ¬v25 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u5
    have u24 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u25 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u26 : v24 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u27 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u26 a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u24
    · exact absurd a n2
    · exact absurd a u29
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2841 : v25 ∨ v4 ∨ v5 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n16
    have u4 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n16
      · exact a
    have u5 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c2842 : v20 ∨ ¬v6 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c2831 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v16 := by
      rcases c2840 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v15 := by
      rcases c2836 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u11 : v7 := by
      rcases c2818 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u13 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u14 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u15 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u16 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
    have u17 : ¬v12 := by
      rcases c2785 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd u11 a
      · exact a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u18 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
    have u19 : ¬v10 := by
      rcases c2649 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v34 := by
      rcases c2107 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u4
    have u21 : v25 := by
      rcases c2841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u22 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n2
      · exact a
    have u24 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u18
      · exact a
    rcases c133 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2843 : ¬v16 ∨ ¬v6 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
    have u6 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u6 a
    rcases c2491 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n6
  have c2844 : v26 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v19 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v16 := by
      rcases c2843 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
    have u8 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u10 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1872 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a n0
  have c2845 : v26 ∨ ¬v6 ∨ v18 ∨ v20 ∨ v22 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v19 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v17 := by
      rcases c2844 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u3 a
    have u10 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v15 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u3 a
    have u12 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
    have u13 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u14 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u15 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v36 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd u14 a
      · exact absurd a u1
    have u21 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v14 := by
      rcases c803 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u2
    have u23 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u21
    have u24 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n1 a
    have u25 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n1 a
    have u26 : v9 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u24
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u27 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u26 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u11
    · exact absurd a u9
  have c2846 : ¬v6 ∨ v18 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v19 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c2845 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v15 := by
      rcases c2786 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
    have u12 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u14 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c124 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u5 : ¬v24 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u4
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n7
  have c2848 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    rcases c501 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u1
  have c2849 : v29 ∨ ¬v6 ∨ ¬v8 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u10 : v18 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u11 : ¬v16 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u10 a
      · exact absurd n3 a
      · exact a
    have u16 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u10 a
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
    have u18 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n9
    have u19 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact a
    have u20 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u21 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u18
    have u22 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u13
      · exact a
    rcases c23 with a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd n1 a
  have c2850 : v32 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v29 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n4
  have c2851 : v29 ∨ ¬v6 ∨ ¬v8 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u10 : v18 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u11 : ¬v16 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u10 a
      · exact absurd n3 a
      · exact a
    have u16 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u10 a
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
    have u18 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n9
    have u19 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact a
    have u20 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u21 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u18
    have u22 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u13
      · exact a
    rcases c23 with a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd n1 a
  have c2852 : v20 ∨ ¬v6 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v18 := by
      rcases c2846 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v19 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u6 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u15 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v31 := by
      rcases c2849 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u19 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
    have u20 : ¬v32 := by
      rcases c2851 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u21 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v38 := by
      rcases c2595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u23 : v24 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u24 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u23 a
    rcases c2850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2853 : v22 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v18 := by
      rcases c2846 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u2 : v19 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u5 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u12 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
    have u16 : v25 := by
      rcases c2852 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u17 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v31 := by
      rcases c2849 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
    have u19 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u8
      · exact a
      · exact absurd a u18
    have u20 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u19 a
      · exact a
    rcases c2594 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2854 : ¬v8 ∨ ¬v6 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n8
    have u7 : v18 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
    have u8 : ¬v16 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u10 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u11 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    rcases c436 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u11
  have c2855 : v9 ∨ v1 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2856 : v22 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v19 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v18 := by
      rcases c2846 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u8 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u10 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u11 : v29 := by
      rcases c2853 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u12 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u12
    have u17 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u19 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u20 : v36 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd u11 a
      · exact absurd a u16
    have u21 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v8 := by
      rcases c2854 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n6
    have u23 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u24 : v9 := by
      rcases c2855 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u25 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u15
    have u28 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u21
    rcases c29 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd n1 a
  have c2857 : v16 ∨ v1 ∨ ¬v6 ∨ v8 ∨ v15 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v3 := by
      rcases c2310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u8 : v9 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n1
  have c2858 : v25 ∨ v1 ∨ ¬v6 ∨ v8 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c2181 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : v15 := by
      rcases c2857 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u3 a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n5 a
    have u6 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c51 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2859 : v9 ∨ v1 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2860 : v14 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ ¬v17 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u5 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n10
      · exact a
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : v9 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v34 := by
      rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n9
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n8
    have u18 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v15 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u1
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n10
    have u20 : v27 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u11
    have u21 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u19 a
      · exact absurd n4 a
      · exact a
    have u22 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u20 a
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd n2 a
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2861 : ¬v6 ∨ v8 ∨ v16 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u6 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u15 : v9 := by
      rcases c2859 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n7 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u19
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v19 := by
      rcases c2858 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u23 : v17 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
    have u24 : ¬v21 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd u23 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v15 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd u23 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v2 := by
      rcases c2860 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
    have u27 : v3 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u26
      · exact a
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a n2
    have u28 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd u27 a
      · exact a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd u27 a
    · exact absurd a u17
  have c2862 : v45 ∨ ¬v6 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v40 := by
      rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a u5
    have u10 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n1 a
    have u12 : v3 := by
      rcases c1298 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u14 : v48 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u15 : v44 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a u7
    rcases c173 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c2863 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
    have u4 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a u2
  have c2864 : ¬v16 ∨ ¬v6 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v11 := by
      rcases c2863 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c77 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2865 : v9 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2866 : ¬v29 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u8 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v16 := by
      rcases c2864 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : v9 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2861 with a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
  have c2867 : ¬v18 ∨ v11 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v26 ∨ v28 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
    have u4 : ¬v15 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
    have u5 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n7
  have c2868 : v16 ∨ ¬v6 ∨ v11 ∨ v17 ∨ ¬v22 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u11 : ¬v18 := by
      rcases c2867 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v38 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
    have u20 : v10 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd u17 a
      · exact a
    have u21 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u19
    rcases c42 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46 := by
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
    rcases c2594 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2870 : ¬v6 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v11 := by
      rcases c2868 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
    have u13 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n0 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u11
  have c2872 : ¬v18 ∨ v16 ∨ ¬v17 ∨ ¬v22 ∨ v28 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
  have c2873 : v28 ∨ ¬v6 ∨ v16 ∨ v20 ∨ v26 ∨ v27 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c2866 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u13 : v17 := by
      rcases c2870 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v18 := by
      rcases c2872 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u1
    have u15 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
    have u16 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u20 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u23 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u10
      · exact a
    have u24 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd n1 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd u23 a
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2874 : v11 ∨ ¬v6 ∨ ¬v15 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v17 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c63 with a|a|a
    · exact absurd n2 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2875 : v16 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c2866 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u13 : v31 := by
      rcases c2873 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u14 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u18 : v15 := by
      rcases c2116 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u16
    have u19 : v11 := by
      rcases c2874 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u23 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u10
      · exact a
    have u24 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd n1 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd u23 a
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2876 : ¬v31 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u8 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u9 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a u8
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v20 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u16 : v15 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u9 a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n5
    have u17 : ¬v16 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
    rcases c2617 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd u15 a
    · exact absurd a n5
    · exact absurd u9 a
  have c2877 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n0
    have u5 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u3
  have c2878 : ¬v15 ∨ ¬v6 ∨ ¬v11 ∨ ¬v16 ∨ v19 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u9 : ¬v7 := by
      rcases c2776 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v31 := by
      rcases c2876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
    rcases c2877 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c2879 : ¬v11 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v16 := by
      rcases c2875 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v29 := by
      rcases c2866 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u9 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
    have u19 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u4
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v15 := by
      rcases c2878 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n6
    have u21 : ¬v21 := by
      rcases c1197 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v17 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u3
    have u23 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd u9 a
    have u24 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u6 a
      · exact absurd u22 a
      · exact a
    have u25 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd u9 a
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
    have u26 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u30 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n6
    have u31 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a u27
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u30
    have u32 : ¬v40 := by
      rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u33 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u31 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u28
    · exact absurd a u33
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u32
  have c2880 : ¬v17 ∨ ¬v6 ∨ v11 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v22 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n6 a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u14 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd n6 a
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a n10
  have c2881 : v31 ∨ ¬v6 ∨ v15 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v16 := by
      rcases c2875 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v11 := by
      rcases c2879 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v29 := by
      rcases c2866 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u5 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v17 := by
      rcases c2880 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
    have u13 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v19 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v21 := by
      rcases c2074 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
    have u16 : v8 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a n0
  have c2882 : v10 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n6
  have c2883 : v31 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v16 := by
      rcases c2875 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v11 := by
      rcases c2879 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u12 : v15 := by
      rcases c2881 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
    have u17 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v39 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u11
    have u22 : ¬v40 := by
      rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v9 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a n6
    have u25 : v10 := by
      rcases c2882 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
    have u26 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u22
    have u29 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u23
    rcases c33 with a|a|a
    · exact absurd u28 a
    · exact absurd n1 a
    · exact absurd u29 a
  have c2884 : v27 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v22 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v16 := by
      rcases c2875 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v11 := by
      rcases c2879 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v31 := by
      rcases c2883 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u12 a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n3
  have c2885 : ¬v31 ∨ ¬v6 ∨ v11 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v21 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact a
    have u8 : v19 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n4
      · exact a
    rcases c90 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c2886 : v11 ∨ ¬v6 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n10
    have u4 : v13 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    rcases c2338 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
  exact ⟨c2837, c2847, c2848, c2850, c2856, c2865, c2869, c2876, c2877, c2884, c2885, c2886⟩
