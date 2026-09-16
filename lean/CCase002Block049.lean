import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2450-2499 of the 2934-step refutation of ccase002: 97 core clauses and 99 earlier-derived ones give 12 more. -/
theorem CCase002_block049
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
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
    (c137 : ¬v32 ∨ ¬v33)
    (c140 : ¬v33 ∨ ¬v34)
    (c149 : ¬v38 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c168 : ¬v48 ∨ ¬v43)
    (c173 : ¬v48 ∨ ¬v44)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c181 : ¬v49 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c183 : ¬v49 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c291 : ¬v48 ∨ v41 ∨ v6 ∨ v42 ∨ v40 ∨ v7 ∨ v47 ∨ v49)
    (c292 : ¬v48 ∨ v41 ∨ v6 ∨ v40 ∨ v7 ∨ v5 ∨ v47 ∨ v49)
    (c332 : v22 ∨ ¬v9 ∨ v24 ∨ v23 ∨ v2 ∨ v16 ∨ v5 ∨ v15 ∨ v8 ∨ v12 ∨ v11 ∨ v19 ∨ v10 ∨ v3)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c434 : v43 ∨ ¬v16 ∨ v45 ∨ v21 ∨ v10 ∨ v23 ∨ v9 ∨ v28 ∨ v17 ∨ v15 ∨ v14 ∨ v2 ∨ v44 ∨ v22)
    (c473 : ¬v48 ∨ v6 ∨ v12 ∨ v42 ∨ v2 ∨ v41 ∨ v14 ∨ v13 ∨ v5 ∨ v37 ∨ v43 ∨ v44 ∨ v47 ∨ v49)
    (c486 : ¬v48 ∨ v41 ∨ v40 ∨ v47 ∨ v49 ∨ v5 ∨ v42 ∨ v6)
    (c491 : ¬v48 ∨ v36 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v40 ∨ v7 ∨ v34 ∨ v1 ∨ v43 ∨ v47 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1215 : v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1273 : ¬v24 ∨ v17 ∨ v18 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1376 : ¬v36 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v43 ∨ v49)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1504 : ¬v18 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1808 : ¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1818 : v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2025 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v20 ∨ v26)
    (c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2460 : v17 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2490 : v46 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v26 ∨ ¬v30 ∨ v45)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2535 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2577 : v17 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2665 : ¬v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v19)
    (c2693 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49)
    (c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20)
    (c2742 : ¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27)
    (c2756 : ¬v41 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2776 : ¬v7 ∨ ¬v6 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19)
    (c2786 : ¬v19 ∨ ¬v15 ∨ v22 ∨ v25 ∨ v26 ∨ v27)
    (c2790 : v48 ∨ v49)
    (c2793 : v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2805 : v13 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2848 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49)
    (c2850 : v32 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v29 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2856 : v22 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2904 : ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2913 : ¬v2 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49)
    (c2940 : ¬v4 ∨ v10 ∨ v11 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v49)
    (c2942 : v19 ∨ v11 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v49)
    (c2947 : ¬v12 ∨ v8 ∨ v11 ∨ v15 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ v49)
    (c2955 : v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47)
    (c2969 : ¬v39 ∨ v6 ∨ v7 ∨ v49)
    (c2970 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v20 ∨ v21)
    (c2976 : v34 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47)
    (c2985 : v22 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v27 ∨ v49)
    (c2987 : ¬v16 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v12 ∨ ¬v17)
    (c2990 : ¬v17 ∨ v20 ∨ v26 ∨ v49)
    (c3009 : ¬v11 ∨ v3 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v44 ∨ v45 ∨ v46)
    (c3014 : ¬v4 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v49)
    (c3018 : ¬v36 ∨ v5 ∨ v6 ∨ v49)
    (c3023 : v5 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3030 : v4 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c3036 : ¬v21 ∨ v20 ∨ v26 ∨ v49)
    (c3038 : v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49)
    : (¬v8 ∨ v15 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v23 ∨ v20 ∨ v49) ∧ (v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (v49 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v29 ∨ v36) ∧ (v28 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v36 ∨ v49) ∧ (v29 ∨ v9 ∨ v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49) ∧ (¬v2 ∨ v3 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (v16 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v4 ∨ v3 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v32 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49) ∧ (v16 ∨ ¬v17 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49) := by
  have c3039 : ¬v12 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
    have u8 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
    have u10 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u11 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n10
    have u17 : v1 := by
      rcases c3038 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n10
    have u20 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n10
    have u21 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u24 : v40 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u8
    have u25 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v39 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u26
      · exact a
      · exact absurd u24 a
      · exact absurd a u12
      · exact absurd a u11
    rcases c158 with a|a
    · exact absurd u27 a
    · exact absurd u24 a
  have c3040 : ¬v1 ∨ ¬v11 ∨ v12 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
    have u6 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u8 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u6
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v23 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n6
      · exact a
    have u14 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    have u15 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    have u16 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
    rcases c2262 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u9
  have c3041 : v15 ∨ ¬v16 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
    have u2 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v47 := by
      rcases c182 with a|a
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
    have u8 : ¬v12 := by
      rcases c3039 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a u3
    have u11 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v13 := by
      rcases c1808 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u13 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v1 := by
      rcases c3040 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u7
    have u17 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n9
    have u18 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v29 := by
      rcases c2805 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u20 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v36 := by
      rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n9
    rcases c2017 with a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
  have c3042 : v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c182 with a|a
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
    have u5 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
    have u6 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v29 := by
      rcases c2805 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n10
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v34 := by
      rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n10
    rcases c1217 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u8
  have c3043 : v18 ∨ v8 ∨ ¬v11 ∨ v13 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v17 := by
      rcases c2985 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u6 : v1 := by
      rcases c3042 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u12 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u13 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    rcases c961 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a n0
  have c3044 : v18 ∨ ¬v1 ∨ v8 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
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
    have u9 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u10 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u11 : ¬v12 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c3045 : v13 ∨ v8 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c2985 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
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
    have u10 : ¬v11 := by
      rcases c3043 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v1 := by
      rcases c3044 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u12 : v14 := by
      rcases c3042 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v7 := by
      rcases c2970 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
    have u15 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
    rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c3046 : v8 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c2985 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
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
    have u10 : v13 := by
      rcases c3045 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd u10 a
      · exact a
      · exact absurd a u12
    have u17 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u20 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u21 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c1741 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u6
  have c3047 : ¬v16 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v15 := by
      rcases c3041 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v17 := by
      rcases c2985 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u3 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u6 : ¬v19 := by
      rcases c2786 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v8 := by
      rcases c3046 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v4 := by
      rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u21 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u26 : v42 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u24
      · exact absurd a u3
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a n8
    rcases c157 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c3048 : v19 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v18 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
    rcases c1504 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3049 : ¬v8 ∨ v15 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
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
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n6
    have u10 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    rcases c2535 with a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c3051 : ¬v23 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
    have u9 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
    have u10 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
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
    have u16 : ¬v16 := by
      rcases c3047 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
    have u17 : v19 := by
      rcases c3048 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u18 : ¬v34 := by
      rcases c1850 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a u10
      · exact a
    have u19 : ¬v15 := by
      rcases c2786 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u20 : ¬v33 := by
      rcases c1972 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a u19
      · exact absurd a u16
      · exact a
    have u21 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd n0 a
    have u22 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u23 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n2
    have u26 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u27 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a n2
    have u28 : ¬v8 := by
      rcases c3049 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a n2
    have u29 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u28
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u5
    have u30 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u28
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n2
    have u31 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
    have u32 : ¬v11 := by
      rcases c3009 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u33 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u23
    have u34 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u33 a
    have u35 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : v2 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u16
      · exact a
      · exact absurd a u30
      · exact absurd a u10
      · exact absurd a u34
    rcases c2913 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u9
    · exact absurd a u28
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u24
    · exact absurd a n2
  have c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n1
    have u2 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c2581 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3053 : v49 ∨ ¬v7 ∨ v8 ∨ ¬v11 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v16 := by
      rcases c434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n8
    have u13 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v4 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n0
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
    have u16 : ¬v3 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u2
    have u17 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u18
    have u22 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u21 a
      · exact a
    rcases c2850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd u21 a
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c3054 : v49 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v29 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
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
    have u7 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u8 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
    have u9 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u10 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
    have u15 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n0
    have u21 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u22 : ¬v40 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u21
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u23 : v41 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u7
    have u24 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v24 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u24
      · exact absurd a u19
    have u26 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u25 a
      · exact a
    rcases c2850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u25 a
    · exact absurd a u26
    · exact absurd a n8
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c3055 : v28 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v29 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
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
    have u8 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c3028 with a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c3056 : v9 ∨ ¬v7 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45 := by
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
    have u2 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c3057 : ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c3053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v36 := by
      rcases c3055 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n9
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v29 := by
      rcases c2017 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u10 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v9 := by
      rcases c3056 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u12
    have u19 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v2 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd u18 a
      · exact absurd a u17
    rcases c18 with a|a|a
    · exact absurd n0 a
    · exact absurd u20 a
    · exact absurd u18 a
  have c3058 : ¬v3 ∨ v4 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : v46 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u3 : ¬v49 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v48 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2790 with a|a
    · exact absurd a u4
    · exact absurd a u3
  have c3059 : ¬v9 ∨ ¬v7 ∨ ¬v16 ∨ v17 ∨ ¬v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v3 := by
      rcases c3058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v20 := by
      rcases c2734 with a|a|a|a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd n2 a
      · exact a
    have u15 : v18 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v19 := by
      rcases c2665 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd u15 a
      · exact a
    rcases c2025 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a u14
    · exact absurd a u13
  have c3060 : v21 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v17 ∨ v20 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v11 := by
      rcases c3053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v16 := by
      rcases c3057 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u8 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u6
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v36 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v9 := by
      rcases c3059 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact a
    have u18 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v18 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n4
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u21 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a n9
    have u22 : v10 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u16
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u6
    have u23 : v5 := by
      rcases c3018 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u21
      · exact absurd a n9
    have u24 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u23 a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u24
      · exact absurd a u4
    rcases c31 with a|a|a
    · exact absurd u23 a
    · exact absurd u25 a
    · exact absurd n1 a
  have c3061 : v29 ∨ v9 ∨ v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    have u2 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u1
      · exact a
    have u3 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd u2 a
    rcases c2942 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
  have c3062 : v29 ∨ v11 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v24 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v19 := by
      rcases c2077 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n7 a
    have u3 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n9
    have u4 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n5
    have u5 : v9 := by
      rcases c3061 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u5 a
      · exact a
    rcases c2665 with a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd u4 a
    · exact absurd a u2
  have c3063 : v10 ∨ v3 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
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
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u9 : v25 := by
      rcases c2460 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u3
    have u13 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n11
    have u14 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u12
      · exact a
    have u16 : v33 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
    rcases c134 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c3064 : ¬v7 ∨ v8 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v11 := by
      rcases c3053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v29 := by
      rcases c3060 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u3 : v16 := by
      rcases c3057 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u6 : ¬v24 := by
      rcases c3062 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v9 := by
      rcases c3061 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u4
    have u9 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u6
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
    have u19 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
    have u20 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n6
    have u21 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u1
    have u22 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
    have u23 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd n0 a
    have u24 : v19 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n8
    have u25 : v26 := by
      rcases c2025 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n4
      · exact a
    have u26 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u12
    have u28 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u27 a
      · exact a
    rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u30
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n8
  have c3065 : ¬v2 ∨ v3 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v1 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c5 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c3066 : v49 ∨ ¬v7 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
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
    have u8 : v8 := by
      rcases c3064 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v2 := by
      rcases c3065 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v16 := by
      rcases c434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n6
    have u16 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
    have u18 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u22 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u19
    have u23 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u22 a
      · exact a
    rcases c2850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c3067 : v16 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u7
    have u10 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a u6
    have u12 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    rcases c2577 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n10
  have c3068 : v18 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v30 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n12
    have u4 : v31 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u3
      · exact a
    have u5 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a u1
      · exact absurd a u5
    rcases c1307 with a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c3069 : ¬v4 ∨ v3 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v5 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c31 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c3070 : ¬v32 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u1
  have c3071 : v11 ∨ v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v2 := by
      rcases c3065 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v4 := by
      rcases c3069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v16 := by
      rcases c3067 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u3 a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u3 a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v24 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v39 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n16
    rcases c1307 with a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u7
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c3072 : v24 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v39 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n10
    have u3 : v47 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u4 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v48 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    rcases c2790 with a|a
    · exact absurd a u5
    · exact absurd a u4
  have c3073 : v29 ∨ v3 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v15 := by
      rcases c3066 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v4 := by
      rcases c3069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u11 : v9 := by
      rcases c3071 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v16 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
    have u16 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u15 a
      · exact absurd u1 a
      · exact a
    have u17 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u15 a
      · exact absurd u1 a
      · exact a
    have u18 : v24 := by
      rcases c3072 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd u18 a
    have u22 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a n10
    have u24 : v5 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u9
      · exact a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u24 a
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a n4
  have c3074 : v17 ∨ v3 ∨ ¬v7 ∨ v11 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v15 := by
      rcases c3066 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v4 := by
      rcases c3069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v10 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u11 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v2 := by
      rcases c3065 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : v16 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
    have u15 : v18 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u13
    rcases c59 with a|a|a
    · exact absurd u14 a
    · exact absurd u1 a
    · exact absurd u15 a
  have c3075 : ¬v7 ∨ v11 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c3074 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u9 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u11 : v10 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
    have u12 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u11 a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u5
  have c3076 : v17 ∨ ¬v7 ∨ ¬v11 ∨ ¬v15 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v16 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v18 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact a
    have u15 : ¬v6 := by
      rcases c2776 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u14
    have u16 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u13
    have u17 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u18 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u19 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    rcases c961 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u9
  have c3077 : v3 ∨ v10 ∨ ¬v15 ∨ v17 ∨ ¬v29 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u3
    have u5 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v16 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u8 : v18 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    rcases c59 with a|a|a
    · exact absurd u7 a
    · exact absurd n2 a
    · exact absurd u8 a
  have c3078 : v10 ∨ ¬v7 ∨ v11 ∨ ¬v15 ∨ v17 ∨ v21 ∨ ¬v29 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v3 := by
      rcases c3077 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a n8
    have u4 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd u3 a
    · exact absurd a n0
  have c3079 : v17 ∨ ¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v15 := by
      rcases c3066 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v11 := by
      rcases c3076 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v29 := by
      rcases c3075 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v10 := by
      rcases c3078 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v16 := by
      rcases c3056 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u20 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u18 a
      · exact absurd u7 a
      · exact a
    have u21 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u18 a
      · exact absurd u7 a
      · exact a
    have u22 : ¬v26 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd a u21
      · exact a
      · exact absurd a u10
    rcases c2086 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a n5
  have c3081 : v11 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
    have u5 : ¬v15 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
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
    have u11 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v4 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
    have u13 : ¬v29 := by
      rcases c3056 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u15 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n7
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    have u17 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u22 : v19 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
    have u23 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u20
    rcases c83 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u1 a
  have c3082 : ¬v10 ∨ ¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
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
    have u8 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v16 := by
      rcases c3081 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u15 a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u15 a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u6 a
    have u19 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact a
    have u20 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u23 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u24 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u21
    have u25 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a u13
    rcases c11 with a|a|a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd n1 a
  have c3083 : v10 ∨ v11 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact a
    have u6 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u11
  have c3084 : v8 ∨ ¬v7 ∨ v11 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u11 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
    have u12 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u13 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v10 := by
      rcases c3082 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u16 : ¬v16 := by
      rcases c3083 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u17 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u1 a
    have u19 : ¬v12 := by
      rcases c2947 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v9 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u12
    have u21 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
    have u22 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u24 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u18
      · exact absurd a n4
      · exact a
      · exact absurd a u21
      · exact absurd a u23
    rcases c129 with a|a
    · exact absurd u24 a
    · exact absurd u22 a
  have c3085 : v21 ∨ ¬v7 ∨ v8 ∨ v11 ∨ v15 ∨ v20 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u4 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
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
    have u10 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v29 := by
      rcases c3084 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u12 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : v19 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u18 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u20 : v36 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v6 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u14
    have u23 : v5 := by
      rcases c3018 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u21
      · exact absurd a n8
    rcases c31 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd n1 a
  have c3086 : v16 ∨ v2 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v17 ∨ v23 ∨ ¬v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v20 := by
      rcases c2742 with a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u1
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n5 a
    have u13 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v32 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u12
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n8
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    rcases c3052 with a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c3087 : v15 ∨ ¬v7 ∨ v11 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
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
    have u10 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v8 := by
      rcases c3085 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v2 := by
      rcases c3065 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : v16 := by
      rcases c3086 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n7
    have u19 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u20 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u21 : v33 := by
      rcases c2070 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u20
      · exact a
    rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd u21 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u5
  have c3088 : v15 ∨ ¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
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
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v11 := by
      rcases c3087 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
    have u18 : v16 := by
      rcases c3086 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n6
    have u19 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u20 : v33 := by
      rcases c2070 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u19
      · exact a
    have u21 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n6
    have u24 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
    have u25 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u26 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u27 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u24 a
      · exact absurd n1 a
      · exact a
    rcases c2987 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd u12 a
    · exact absurd a u16
    · exact absurd u1 a
  have c3089 : ¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u2 : v15 := by
      rcases c3088 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v17 := by
      rcases c3079 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u5 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
    have u6 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v8 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u5 a
    rcases c1369 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u7
  have c3090 : v16 ∨ ¬v17 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
    have u2 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u7
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v15 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u1 a
    have u20 : ¬v29 := by
      rcases c2805 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u21 : ¬v4 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n7
    have u22 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u25 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u17
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd a u9
    · exact absurd a n7
  exact ⟨c3049, c3051, c3052, c3054, c3055, c3061, c3065, c3067, c3069, c3070, c3089, c3090⟩
