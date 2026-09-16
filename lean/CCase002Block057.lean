import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2850-2899 of the 2934-step refutation of ccase002: 104 core clauses and 91 earlier-derived ones give 6 more. -/
theorem CCase002_block057
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
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
    (c123 : ¬v31 ∨ ¬v29)
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
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c161 : ¬v41 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c210 : v29 ∨ v43 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v37 ∨ ¬v36)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c325 : v36 ∨ ¬v49 ∨ v42 ∨ v7 ∨ v5 ∨ v40 ∨ v6 ∨ v28 ∨ v22 ∨ v27 ∨ v35 ∨ v43 ∨ v47 ∨ v48)
    (c329 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v18 ∨ v4 ∨ v1 ∨ v3 ∨ ¬v11 ∨ v8 ∨ v10 ∨ v12 ∨ v9 ∨ v26)
    (c338 : v21 ∨ v19 ∨ v3 ∨ v18 ∨ v14 ∨ v4 ∨ v7 ∨ v13 ∨ ¬v11 ∨ v12 ∨ v10 ∨ v45 ∨ v46 ∨ v47)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c380 : v43 ∨ ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v41 ∨ v48)
    (c399 : v13 ∨ v12 ∨ v48 ∨ v47 ∨ v14 ∨ v7 ∨ ¬v6 ∨ v5)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c459 : v29 ∨ ¬v23 ∨ v30 ∨ v15 ∨ v24 ∨ v17 ∨ v16 ∨ v22)
    (c509 : v27 ∨ v28 ∨ v17 ∨ v11 ∨ v20 ∨ v3 ∨ v21 ∨ v26 ∨ v5 ∨ v14 ∨ v10 ∨ ¬v13 ∨ v12 ∨ v6)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c952 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1006 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1672 : ¬v4 ∨ ¬v1 ∨ v3 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1807 : ¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17)
    (c1808 : ¬v18 ∨ ¬v13 ∨ v15 ∨ ¬v16)
    (c1826 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2366 : ¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2532 : v14 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v21 ∨ v44 ∨ v45 ∨ v46)
    (c2547 : ¬v16 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v23 ∨ v24)
    (c2684 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ ¬v19 ∨ v38 ∨ v45)
    (c2757 : v30 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2837 : ¬v29 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2850 : v32 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v29 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2962 : v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40)
    (c2987 : ¬v16 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v12 ∨ ¬v17)
    (c3012 : ¬v25 ∨ v18 ∨ ¬v19 ∨ v20 ∨ ¬v21)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3235 : v49)
    (c3258 : ¬v37 ∨ v29 ∨ v30)
    (c3265 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24)
    (c3273 : ¬v40 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v27)
    (c3284 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c3295 : ¬v41 ∨ v1 ∨ v6 ∨ v7)
    (c3309 : ¬v15)
    (c3322 : ¬v6 ∨ ¬v4)
    (c3335 : v19 ∨ ¬v34)
    (c3342 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25)
    (c3344 : ¬v33 ∨ v4 ∨ v6 ∨ v7 ∨ v36 ∨ v39 ∨ v42)
    (c3348 : ¬v33 ∨ v3 ∨ v10 ∨ v16 ∨ v17)
    (c3365 : v33 ∨ v5 ∨ v12 ∨ ¬v16 ∨ v19)
    (c3368 : ¬v4 ∨ ¬v2 ∨ v5)
    (c3370 : ¬v5 ∨ ¬v2)
    (c3371 : ¬v2 ∨ v19)
    (c3373 : v16 ∨ v2 ∨ v9 ∨ ¬v32)
    (c3375 : ¬v23 ∨ v11 ∨ v17 ∨ ¬v18 ∨ v19)
    (c3381 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v41)
    (c3382 : ¬v23 ∨ ¬v5 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v32)
    (c3387 : ¬v4 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v27 ∨ v34)
    (c3388 : ¬v1 ∨ v2 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v14)
    (c3389 : v22 ∨ v1 ∨ v8 ∨ ¬v32)
    (c3395 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23)
    (c3401 : ¬v12 ∨ v19)
    (c3417 : ¬v36 ∨ v29 ∨ v30 ∨ v35)
    (c3419 : v16 ∨ v19)
    (c3420 : ¬v17 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v32)
    (c3421 : ¬v1 ∨ v10 ∨ v11 ∨ v19)
    (c3426 : ¬v4 ∨ v1 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v27 ∨ v34)
    (c3428 : ¬v9 ∨ v19)
    (c3430 : ¬v22 ∨ v4 ∨ v11 ∨ v19)
    (c3433 : v36 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c3436 : v4 ∨ v1 ∨ v11 ∨ v19)
    (c3437 : ¬v25 ∨ ¬v4 ∨ v19)
    (c3438 : ¬v17 ∨ v1 ∨ ¬v4 ∨ v18 ∨ v19)
    (c3440 : v22 ∨ v1 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v20)
    : (v19) ∧ (¬v11 ∨ ¬v16) ∧ (¬v30 ∨ v6 ∨ v13 ∨ v20 ∨ v27) ∧ (¬v1) ∧ (¬v31 ∨ v8 ∨ v21) ∧ (v16 ∨ v3 ∨ v4 ∨ v6 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v17) := by
  have c3441 : v20 ∨ v1 ∨ v11 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n4
    have u8 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n4
      · exact a
    have u9 : v4 := by
      rcases c3436 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u10 : ¬v25 := by
      rcases c3437 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n4
    have u11 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v22 := by
      rcases c3440 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u13 : ¬v17 := by
      rcases c3438 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u14
    have u18 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a u16
    have u19 : ¬v5 := by
      rcases c3387 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
    have u20 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n4
    have u21 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v39 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u20 a
      · exact a
      · exact absurd a u17
    rcases c1307 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3442 : ¬v20 ∨ ¬v16 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u10 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u11 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a u7
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u11
  have c3443 : v23 ∨ v9 ∨ ¬v16 ∨ v17 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v22 := by
      rcases c3442 with a|a|a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact a
    have u5 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact a
    have u6 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
    have u7 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
  have c3444 : v18 ∨ v1 ∨ v11 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v4 := by
      rcases c3436 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n3
    have u9 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n3
    have u11 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n3
    have u12 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n3
      · exact a
    have u13 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v17 := by
      rcases c3438 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n3
    have u15 : v20 := by
      rcases c3441 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u16 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u15 a
    have u17 : v23 := by
      rcases c3443 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
    have u23 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u25
    have u27 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u5
    have u28 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u21
    rcases c3381 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u26
  have c3445 : v11 ∨ v1 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v4 := by
      rcases c3436 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u10 : v18 := by
      rcases c3444 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u11 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v23 := by
      rcases c3375 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n2
    have u13 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n2
    have u14 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n2
    have u15 : ¬v20 := by
      rcases c3443 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a u11
      · exact a
    have u16 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u17 : ¬v25 := by
      rcases c3437 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
    have u18 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v13 := by
      rcases c1808 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u7
      · exact absurd u8 a
    have u20 : ¬v27 := by
      rcases c1804 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u21 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u20
      · exact a
      · exact absurd a u16
    have u22 : v10 := by
      rcases c3426 with a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u16
    have u23 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u20
    have u24 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v5 := by
      rcases c3387 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u16
    have u27 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a n2
    have u28 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact a
    have u31 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u32 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u30 a
      · exact a
    rcases c2962 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u17
    · exact absurd a u32
    · exact absurd a u20
    · exact absurd u27 a
    · exact absurd a u31
    · exact absurd a u23
  have c3446 : ¬v18 ∨ v1 ∨ v19 ∨ v20 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v11 := by
      rcases c3445 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u10
      · exact a
    have u17 : v23 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n4
      · exact a
    have u18 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a u15
    have u19 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v5 := by
      rcases c3382 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
    have u23 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n2
    have u24 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v40 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd u23 a
      · exact absurd a u19
      · exact a
    have u26 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n4
    rcases c146 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c3447 : v22 ∨ v1 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v11 := by
      rcases c3445 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact a
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v18 := by
      rcases c3446 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u18 : ¬v4 := by
      rcases c3440 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v17 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v5 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u18
      · exact a
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a n2
    have u22 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u19 a
    have u23 : v7 := by
      rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u18
      · exact a
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : v6 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd u21 a
      · exact absurd a u5
      · exact absurd a u12
    rcases c33 with a|a|a
    · exact absurd u21 a
    · exact absurd u24 a
    · exact absurd u23 a
  have c3448 : ¬v22 ∨ v1 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : v11 := by
      rcases c3445 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u12 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n2
    have u13 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v17 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u15
    have u18 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u12 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v4 := by
      rcases c3438 with a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n1
      · exact a
      · exact absurd a u18
      · exact absurd a n2
    have u20 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd u10 a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u6
  have c3449 : v1 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v11 := by
      rcases c3445 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c3448 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u6 : v20 := by
      rcases c3447 with a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u7 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
    have u8 : v23 := by
      rcases c3443 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd u6 a
    have u9 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u6 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd u6 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
  have c3450 : v11 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n1
    have u10 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n1
    have u11 : v1 := by
      rcases c3449 with a|a
      · exact a
      · exact absurd a n1
    have u12 : v10 := by
      rcases c3421 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u13 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd u11 a
      · exact absurd a u14
    have u19 : ¬v5 := by
      rcases c3388 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
    have u20 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u11 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u18 a
    have u22 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a n1
    have u23 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : ¬v17 := by
      rcases c3420 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u24
    have u28 : ¬v22 := by
      rcases c3430 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n1
    have u29 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u30 : ¬v23 := by
      rcases c3375 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd u29 a
      · exact absurd a n1
    have u31 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u30
      · exact a
    have u32 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u31 a
    have u35 : v40 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a u34
      · exact absurd u22 a
      · exact absurd a u26
      · exact a
    have u36 : ¬v20 := by
      rcases c3443 with a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a u27
      · exact a
    have u37 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u36
      · exact absurd a u34
      · exact a
      · exact absurd a u23
    rcases c161 with a|a
    · exact absurd u37 a
    · exact absurd u35 a
  have c3451 : v19 := by
    by_contra hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a hc
    have u5 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a hc
    have u6 : v1 := by
      rcases c3449 with a|a
      · exact a
      · exact absurd a hc
    have u7 : v11 := by
      rcases c3450 with a|a
      · exact a
      · exact absurd a hc
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a u10
    have u14 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v5 := by
      rcases c3388 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u16 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u17 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd a hc
    have u18 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v18 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u7 a
      · exact a
      · exact absurd a hc
    have u20 : ¬v17 := by
      rcases c2987 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a u11
      · exact a
    have u21 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u20
      · exact a
    have u22 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u21 a
    rcases c1220 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a u22
    · exact absurd a u23
  have c3452 : ¬v11 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
    have u9 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u9
    have u11 : v23 := by
      rcases c2547 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd u2 a
      · exact a
      · exact absurd a u8
    have u12 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u11 a
    rcases c727 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd u2 a
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
  have c3453 : v9 ∨ ¬v1 ∨ v10 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v19 := c3451
    have u8 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a u9
      · exact a
    have u11 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
    have u15 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
    have u22 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u13
      · exact a
    have u23 : v23 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a u11
      · exact absurd a u21
      · exact a
      · exact absurd a u10
    rcases c107 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c3454 : v10 ∨ ¬v1 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v19 := c3451
    have u7 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u8
      · exact a
    have u10 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n2 a
      · exact absurd u6 a
      · exact a
    have u12 : v9 := by
      rcases c3453 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
    have u13 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a u8
      · exact a
    have u16 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u16
    have u19 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v3 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
    have u21 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1 with a|a|a
    · exact absurd n1 a
    · exact absurd u21 a
    · exact absurd u20 a
  have c3455 : ¬v1 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
    have u6 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u8 : v10 := by
      rcases c3454 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u9 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a u4
      · exact a
    have u13 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u12 a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u5
  have c3456 : ¬v6 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u9 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u10 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd n0 a
      · exact a
    have u11 : v4 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : v11 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u15
  have c3457 : ¬v23 ∨ v6 ∨ v13 ∨ v16 ∨ v17 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u13 : v30 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u10
    have u14 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a u15
    have u18 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3284 with a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u18
  have c3458 : ¬v2 ∨ ¬v1 ∨ ¬v10 ∨ v17 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd n2 a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3459 : v2 ∨ ¬v1 ∨ ¬v10 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u12 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u8
    have u13 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c419 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u8
  have c3460 : v17 ∨ ¬v1 ∨ ¬v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v19 := c3451
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v6 := by
      rcases c3456 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u11 : v2 := by
      rcases c3459 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    have u12 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u13 : v21 := by
      rcases c3458 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
    have u14 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v25 := by
      rcases c3012 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u6 a
      · exact absurd a u15
      · exact absurd u13 a
    have u18 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd u6 a
      · exact absurd a u15
      · exact a
    have u19 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u20
      · exact a
      · exact absurd a u23
    rcases c3284 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u24
  have c3461 : ¬v32 ∨ v6 ∨ v13 ∨ v20 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u8
    rcases c3284 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c3462 : ¬v4 ∨ ¬v1 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1672 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3463 : ¬v10 ∨ ¬v1 ∨ v18 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v4 := by
      rcases c3462 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
    have u9 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u9
    have u12 : v6 := by
      rcases c3461 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u10
    have u13 : v2 := by
      rcases c3373 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd u11 a
    rcases c4 with a|a|a
    · exact absurd u13 a
    · exact absurd n1 a
    · exact absurd u12 a
  have c3464 : v12 ∨ v10 ∨ v11 ∨ v13 ∨ ¬v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u5 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
    have u6 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u3
    have u7 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
  have c3465 : v24 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := c3451
    have u2 : v23 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    rcases c599 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
  have c3466 : ¬v17 ∨ ¬v1 ∨ v11 ∨ v13 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u5 : ¬v4 := by
      rcases c3462 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u6 : ¬v10 := by
      rcases c3463 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v12 := by
      rcases c3464 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v24 := by
      rcases c3465 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u4
    have u10 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u10
    have u13 : v6 := by
      rcases c3461 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u11
    have u14 : v2 := by
      rcases c3373 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd u12 a
    rcases c4 with a|a|a
    · exact absurd u14 a
    · exact absurd n1 a
    · exact absurd u13 a
  have c3467 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
    have u6 : ¬v33 := by
      rcases c3348 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
    rcases c952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3468 : ¬v3 ∨ ¬v1 ∨ v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v4 := by
      rcases c3462 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    rcases c3118 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3469 : v18 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c3467 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u2 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
    have u5 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1006 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
  have c3470 : ¬v31 ∨ ¬v1 ∨ v3 ∨ v13 ∨ v17 ∨ v20 ∨ v23 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u13 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
    rcases c3395 with a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n6
  have c3471 : ¬v24 ∨ ¬v1 ∨ v3 ∨ v13 ∨ v17 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v19 := c3451
    have u8 : ¬v16 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd n0 a
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
    have u16 : ¬v31 := by
      rcases c3470 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u13
    have u17 : v32 := by
      rcases c2850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v6 := by
      rcases c3461 with a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u13
    have u19 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
    have u21 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
    rcases c3395 with a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u11
  have c3472 : v13 ∨ ¬v1 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := c3309
    have u5 : v19 := c3451
    have u6 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c3462 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : ¬v17 := by
      rcases c3466 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    have u9 : ¬v10 := by
      rcases c3460 with a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    have u10 : ¬v3 := by
      rcases c3468 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n2
    have u11 : ¬v33 := by
      rcases c3348 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v18 := by
      rcases c3469 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
    have u13 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u5 a
    have u15 : ¬v24 := by
      rcases c3471 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u13
    have u16 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
    have u17 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
    have u21 : ¬v23 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u20
    have u22 : v27 := by
      rcases c3470 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u21
      · exact a
    have u23 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
    rcases c1757 with a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd u22 a
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u19
  have c3473 : v24 ∨ v2 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
    have u3 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v23 := by
      rcases c3395 with a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n4
      · exact a
    rcases c459 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u5
  have c3474 : v17 ∨ ¬v1 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v19 := c3451
    have u9 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : v13 := by
      rcases c3472 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u15 : ¬v4 := by
      rcases c3462 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u16 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v18 := by
      rcases c3469 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
    have u19 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u8 a
    have u20 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u8 a
    have u21 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u22 : ¬v2 := by
      rcases c2366 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd n1 a
      · exact absurd a u11
    have u24 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact a
    have u26 : v24 := by
      rcases c3473 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u24
    have u27 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u26 a
    rcases c509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd u10 a
    · exact absurd a u12
    · exact absurd a u25
  have c3475 : v11 ∨ ¬v1 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v16 := by
      rcases c3455 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v13 := by
      rcases c3472 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v17 := by
      rcases c3474 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u7 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
    have u9 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u7
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    rcases c3465 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd u6 a
    · exact absurd a u8
  have c3476 : ¬v30 ∨ v6 ∨ v13 ∨ v20 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u6
    rcases c3284 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u8
  have c3477 : v27 ∨ v2 ∨ v6 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ ¬v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n7 a
    have u4 : ¬v30 := by
      rcases c3476 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
    have u5 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u2
    have u6 : v23 := by
      rcases c3395 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u6 a
    rcases c599 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n7 a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
  have c3478 : ¬v27 ∨ v10 ∨ v16 ∨ ¬v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
  have c3479 : v33 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v17 ∨ ¬v25 ∨ v27 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v19 := c3451
    have u7 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v42 := by
      rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v34 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u5
    rcases c1217 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u14
  have c3480 : v29 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v17 ∨ ¬v25 ∨ v27 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v19 := c3451
    have u7 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u6 a
    have u8 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u10 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n6 a
    have u12 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    have u13 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n6 a
      · exact a
    have u14 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n6 a
    have u15 : ¬v30 := by
      rcases c3476 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n7
    have u16 : ¬v32 := by
      rcases c3461 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n7
    have u17 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v36 := by
      rcases c3417 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n8
    have u20 : v1 := by
      rcases c3433 with a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
    have u21 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v2 := by
      rcases c3477 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd n5 a
    have u25 : ¬v4 := by
      rcases c3368 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a n1
    have u26 : v33 := by
      rcases c3479 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u19
    have u27 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v41 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u27
      · exact a
      · exact absurd a u5
    have u29 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u28 a
      · exact a
    rcases c3344 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u29
  have c3481 : v35 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ ¬v17 ∨ ¬v25 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v19 := c3451
    have u4 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v30 := by
      rcases c3476 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
    have u10 : v29 := by
      rcases c3480 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
    have u11 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v41 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u14 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u13 a
      · exact a
    rcases c2757 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd u10 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
  have c3482 : v23 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v10 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v17 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v19 := c3451
    have u4 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v27 := by
      rcases c3478 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd n9 a
    have u7 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n9 a
    have u8 : ¬v30 := by
      rcases c3476 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
    have u9 : v25 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n0
      · exact absurd a n10
      · exact a
    have u10 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v35 := by
      rcases c3481 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n9 a
      · exact absurd u9 a
      · exact absurd a u6
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
    have u16 : v41 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n9 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd a u2
    have u17 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u18
  have c3483 : ¬v17 ∨ ¬v1 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u5 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v6 := by
      rcases c3456 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u13 : ¬v27 := by
      rcases c3478 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd n0 a
    have u14 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u3
    have u15 : v2 := by
      rcases c3477 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd n0 a
    have u16 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u18 : v23 := by
      rcases c3482 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u14
    have u19 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u18 a
    rcases c599 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u13
  have c3484 : v20 ∨ ¬v1 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v17 := by
      rcases c3483 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v16 := by
      rcases c3452 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v6 := by
      rcases c3456 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : ¬v23 := by
      rcases c3457 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
    have u11 : ¬v30 := by
      rcases c3476 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
    have u12 : v2 := by
      rcases c3395 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
    have u13 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c3461 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
    have u15 : ¬v31 := by
      rcases c3470 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
    have u16 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u1
      · exact a
    rcases c2126 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u14
  have c3485 : ¬v2 ∨ ¬v1 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c3483 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c3368 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
    rcases c961 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
  have c3486 : v18 ∨ ¬v1 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v16 := by
      rcases c3452 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v2 := by
      rcases c3485 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u12 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact a
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v17 := by
      rcases c3483 with a|a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u10
    have u18 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u19 : v25 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u5
    have u20 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u20
    have u23 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u21
    rcases c128 with a|a
    · exact absurd u22 a
    · exact absurd u23 a
  have c3487 : v2 ∨ ¬v1 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := c3309
    have u5 : v19 := c3451
    have u6 : v18 := by
      rcases c3486 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u10 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
    have u14 : v27 := by
      rcases c3484 with a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
    have u15 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
    have u16 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v35 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
    have u18 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u16
    rcases c132 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c3488 : ¬v1 := by
    by_contra hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v19 := c3451
    have u5 : v2 := by
      rcases c3487 with a|a
      · exact a
      · exact absurd hc a
    have u6 : v11 := by
      rcases c3475 with a|a
      · exact a
      · exact absurd hc a
    have u7 : ¬v16 := by
      rcases c3452 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v18 := by
      rcases c3486 with a|a
      · exact a
      · exact absurd hc a
    have u9 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u8 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u4 a
    have u12 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd hc a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v10 := by
      rcases c3458 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd hc a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v33 := by
      rcases c3348 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : v27 := by
      rcases c3484 with a|a|a
      · exact absurd a u10
      · exact absurd hc a
      · exact a
    have u17 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u19
    have u21 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
    rcases c1757 with a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u21
  have c3489 : ¬v31 ∨ v8 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := c3309
    have u5 : ¬v1 := c3488
    have u6 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u10 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u9
    have u11 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd u10 a
  have c3490 : v16 ∨ v3 ∨ v4 ∨ v6 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v19 := c3451
    have u7 : ¬v1 := c3488
    have u8 : ¬v33 := by
      rcases c3348 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u9 : v18 := by
      rcases c3469 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
    have u12 : ¬v31 := by
      rcases c3489 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
    have u13 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v23 := by
      rcases c3457 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u10
    have u15 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact a
    have u16 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v36 := by
      rcases c3433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
    have u19 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v34 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a u3
    have u22 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u15 a
    have u23 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
    have u24 : v26 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u5
    rcases c112 with a|a
    · exact absurd u24 a
    · exact absurd u15 a
  exact ⟨c3451, c3452, c3476, c3488, c3489, c3490⟩
