import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2800-2849 of the 2934-step refutation of ccase002: 106 core clauses and 76 earlier-derived ones give 14 more. -/
theorem CCase002_block056
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
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
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c139 : ¬v32 ∨ ¬v35)
    (c141 : ¬v35 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c210 : v29 ∨ v43 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v37 ∨ ¬v36)
    (c234 : ¬v23 ∨ v30 ∨ v26 ∨ v24 ∨ v16 ∨ v31 ∨ v25 ∨ v9 ∨ v8 ∨ v19 ∨ v10 ∨ v15 ∨ v22 ∨ v33)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c332 : v22 ∨ ¬v9 ∨ v24 ∨ v23 ∨ v2 ∨ v16 ∨ v5 ∨ v15 ∨ v8 ∨ v12 ∨ v11 ∨ v19 ∨ v10 ∨ v3)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c355 : v29 ∨ v43 ∨ v35 ∨ v37 ∨ v44 ∨ v48 ∨ v14 ∨ v1 ∨ v8 ∨ v41 ∨ v9 ∨ v34 ∨ ¬v36 ∨ v42)
    (c369 : ¬v25 ∨ v18 ∨ v35 ∨ v40 ∨ v32 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v31 ∨ v24 ∨ v38 ∨ v39 ∨ v28)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c380 : v43 ∨ ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v41 ∨ v48)
    (c399 : v13 ∨ v12 ∨ v48 ∨ v47 ∨ v14 ∨ v7 ∨ ¬v6 ∨ v5)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c402 : v43 ∨ v37 ∨ ¬v49 ∨ v22 ∨ v42 ∨ v28 ∨ v35 ∨ v27 ∨ v1 ∨ v2 ∨ v7 ∨ v41 ∨ v44 ∨ v48)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1275 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1672 : ¬v4 ∨ ¬v1 ∨ v3 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1826 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1905 : ¬v35 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v36 ∨ v37 ∨ v42)
    (c1936 : v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2742 : ¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2962 : v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3032 : ¬v27 ∨ ¬v16 ∨ v17 ∨ ¬v21)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3159 : ¬v8 ∨ v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21)
    (c3202 : v10 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c3235 : v49)
    (c3243 : v19 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v24 ∨ v25)
    (c3258 : ¬v37 ∨ v29 ∨ v30)
    (c3265 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24)
    (c3273 : ¬v40 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v27)
    (c3284 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c3295 : ¬v41 ∨ v1 ∨ v6 ∨ v7)
    (c3303 : v33 ∨ ¬v4 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c3309 : ¬v15)
    (c3322 : ¬v6 ∨ ¬v4)
    (c3335 : v19 ∨ ¬v34)
    (c3342 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25)
    (c3354 : ¬v33 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v21)
    (c3365 : v33 ∨ v5 ∨ v12 ∨ ¬v16 ∨ v19)
    (c3371 : ¬v2 ∨ v19)
    (c3372 : ¬v16 ∨ ¬v12 ∨ ¬v20)
    (c3373 : v16 ∨ v2 ∨ v9 ∨ ¬v32)
    (c3374 : v18 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v19 ∨ v32)
    (c3375 : ¬v23 ∨ v11 ∨ v17 ∨ ¬v18 ∨ v19)
    (c3378 : v4 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v19 ∨ ¬v20)
    (c3379 : v23 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v16 ∨ v36 ∨ v37)
    (c3380 : ¬v20 ∨ ¬v5 ∨ ¬v12 ∨ v19)
    (c3381 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v41)
    (c3385 : v16 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v20)
    (c3386 : ¬v27 ∨ ¬v16 ∨ v19 ∨ v20)
    (c3387 : ¬v4 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v27 ∨ v34)
    (c3389 : v22 ∨ v1 ∨ v8 ∨ ¬v32)
    (c3390 : v22 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v19 ∨ v20)
    : (v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23) ∧ (¬v12 ∨ v19) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35) ∧ (v16 ∨ v19) ∧ (¬v17 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v32) ∧ (¬v1 ∨ v10 ∨ v11 ∨ v19) ∧ (¬v4 ∨ v1 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v27 ∨ v34) ∧ (¬v9 ∨ v19) ∧ (¬v22 ∨ v4 ∨ v11 ∨ v19) ∧ (v36 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28) ∧ (v4 ∨ v1 ∨ v11 ∨ v19) ∧ (¬v25 ∨ ¬v4 ∨ v19) ∧ (¬v17 ∨ v1 ∨ ¬v4 ∨ v18 ∨ v19) ∧ (v22 ∨ v1 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v20) := by
  have c3391 : ¬v5 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v20 := by
      rcases c3380 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : v16 := by
      rcases c3385 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u9
    have u11 : ¬v27 := by
      rcases c3386 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u9
    have u12 : ¬v4 := by
      rcases c3387 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
    have u13 : v22 := by
      rcases c3390 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u9
    have u14 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v17 := by
      rcases c1203 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u16
    have u18 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u10 a
      · exact absurd u17 a
      · exact a
    have u20 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u14
    have u21 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    rcases c1805 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u22
  have c3392 : ¬v32 ∨ ¬v12 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v16 := by
      rcases c2116 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u8 : v21 := by
      rcases c1805 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u9 : v17 := by
      rcases c1203 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u6
    rcases c76 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c3393 : ¬v16 ∨ ¬v12 ∨ v19 ∨ ¬v22 ∨ v32 := by
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
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v20 := by
      rcases c3372 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c3386 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u7
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u17 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n3 a
      · exact a
    have u18 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u19 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u20 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u21 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n3 a
      · exact a
    have u22 : v17 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u10
    have u23 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n0 a
      · exact absurd u22 a
      · exact a
    have u25 : v4 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u18
    have u26 : ¬v6 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u8
    have u28 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u16
    have u29 : ¬v33 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u27
    have u30 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u28 a
      · exact a
    have u32 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u28 a
      · exact a
    have u33 : v35 := by
      rcases c3284 with a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u29
      · exact absurd a u16
      · exact a
      · exact absurd a u27
    rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u32
  have c3394 : ¬v22 ∨ ¬v12 ∨ v19 := by
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
    have u5 : ¬v15 := c3309
    have u6 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u14 : ¬v32 := by
      rcases c3392 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u15 : ¬v16 := by
      rcases c3393 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u14
    have u16 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
    have u17 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v35 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
    have u19 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u13
  have c3395 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 := by
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
    have u5 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v37 := by
      rcases c3258 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n1
  have c3396 : ¬v1 ∨ ¬v12 ∨ v16 ∨ v19 := by
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
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v5 := by
      rcases c3391 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    have u14 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n3
    have u15 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a u7
    have u17 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v20 := by
      rcases c3378 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    rcases c352 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
  have c3397 : ¬v30 ∨ ¬v12 ∨ v16 ∨ v19 := by
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
    have u8 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v22 := by
      rcases c3394 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u16
    have u18 : ¬v1 := by
      rcases c3396 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u15
    have u20 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd u19 a
    · exact absurd a u20
  have c3398 : v16 ∨ ¬v12 ∨ v19 := by
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
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v5 := by
      rcases c3391 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u15 : ¬v22 := by
      rcases c3394 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u16 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u17 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u18 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u19 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v30 := by
      rcases c3397 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u21 : v23 := by
      rcases c3395 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n0
      · exact a
    have u22 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v17 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd u21 a
    have u27 : ¬v20 := by
      rcases c2742 with a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u22
    have u28 : v31 := by
      rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n0
      · exact a
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u18
    have u29 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u19
    have u31 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd a u17
    have u32 : ¬v4 := by
      rcases c3322 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : v1 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u27
      · exact a
      · exact absurd a u32
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
    have u34 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd u33 a
      · exact absurd a u8
    rcases c14 with a|a|a
    · exact absurd u33 a
    · exact absurd u34 a
    · exact absurd u31 a
  have c3399 : ¬v1 ∨ ¬v12 ∨ v19 ∨ v20 := by
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
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v5 := by
      rcases c3391 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u14 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u15 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a u7
    have u17 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u16 a
      · exact a
    rcases c352 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
  have c3400 : ¬v16 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v15 := c3309
    have u7 : ¬v20 := by
      rcases c3372 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c3386 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u7
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v1 := by
      rcases c3399 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
    have u14 : ¬v22 := by
      rcases c3394 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u15 : ¬v5 := by
      rcases c3391 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u16 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u17 : v4 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
    have u18 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u8
    have u20 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u16
    have u21 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u14
    have u23 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u22 a
      · exact a
    rcases c3284 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u24
    · exact absurd a u19
  have c3401 : ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v16 := by
      rcases c3398 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c3400 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
  have c3402 : v6 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v16 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := c3309
    have u5 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
    have u6 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v23 := by
      rcases c3379 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v29 := by
      rcases c3381 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u12
  have c3403 : v16 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v19 ∨ v22 ∨ v29 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n6
    have u7 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u8 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n5
      · exact a
    have u9 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v35 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u9
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v23 := by
      rcases c3395 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u14 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u13 a
    rcases c1464 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u9
  have c3404 : v16 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v19 ∨ v26 ∨ v29 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u5 : v22 := by
      rcases c3403 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u11 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
    have u12 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n3
  have c3405 : ¬v29 ∨ ¬v6 ∨ v9 ∨ v16 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u8 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v4 := by
      rcases c3322 with a|a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n4
    have u16 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n4
    have u17 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : v23 := by
      rcases c3395 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u19 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u17
    have u20 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
    have u21 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u27 : ¬v1 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u28 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : v42 := by
      rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u28
      · exact absurd u1 a
      · exact absurd a u24
      · exact a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u7
    have u30 : v36 := by
      rcases c3381 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u11
      · exact a
      · exact absurd a u28
      · exact absurd a u19
    rcases c148 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c3406 : v20 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
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
    have u8 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n6
    have u9 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n6
      · exact a
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n6
    have u11 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n3
      · exact a
    have u13 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u15 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v6 := by
      rcases c3402 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
    have u17 : ¬v29 := by
      rcases c3405 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u18 : v41 := by
      rcases c3404 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u17
      · exact a
    have u19 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v35 := by
      rcases c3284 with a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a u13
    have u21 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact a
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u21 a
      · exact a
    rcases c3395 with a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u23
  have c3407 : ¬v22 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u9 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u14
      · exact a
    have u16 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u17 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n5
      · exact a
    have u18 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n5
    have u19 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u12
    have u20 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u22 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v1 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd a n2
    have u25 : v6 := by
      rcases c3402 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u17
    have u26 : v20 := by
      rcases c3406 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v4 := by
      rcases c3322 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
    have u29 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u27
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u30 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u29 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
    have u31 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd a u16
      · exact a
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c3265 with a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u28
    · exact absurd a u13
  have c3408 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := c3309
    have u4 : ¬v22 := by
      rcases c3407 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u5 a
    rcases c3403 with a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u6
  have c3409 : v1 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u5 : ¬v15 := c3309
    have u6 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u7 : v20 := by
      rcases c3406 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v29 := by
      rcases c3408 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v23 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : v17 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    rcases c2742 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u7 a
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u10
  have c3410 : v14 ∨ v8 ∨ v9 ∨ v16 ∨ v19 := by
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
    have u8 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n4
    have u9 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n4
      · exact a
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n4
    have u11 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n2
      · exact a
    have u13 : v1 := by
      rcases c3409 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v7 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a n2
    have u15 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u16 : v26 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : v20 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u23 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
    have u24 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
    have u26 : v10 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u17
      · exact a
      · exact absurd a u25
      · exact absurd a u21
    have u27 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u26 a
    rcases c419 with a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a n2
  have c3411 : ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u9 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u11 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n5
      · exact a
    have u12 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n5
    have u13 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u15 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n1
      · exact a
    have u16 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v20 := by
      rcases c3378 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u18 : v26 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c1100 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u11
  have c3412 : ¬v26 ∨ ¬v14 ∨ v19 ∨ v33 := by
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
    have u6 : ¬v15 := c3309
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u15 : ¬v16 := by
      rcases c2070 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u7
    have u17 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v1 := by
      rcases c3411 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n2
    have u19 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
    have u21 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u20 a
    rcases c1363 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u21
  have c3413 : v8 ∨ v9 ∨ v16 ∨ v19 := by
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
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n3
      · exact a
    have u11 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n3
    have u12 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n1
      · exact a
    have u13 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
    have u14 : v14 := by
      rcases c3410 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v1 := by
      rcases c3411 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v26 := by
      rcases c3412 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u13
    have u20 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v6 := by
      rcases c3402 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
    have u22 : ¬v4 := by
      rcases c3322 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u9
      · exact a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v20 := by
      rcases c3378 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u25 : v18 := by
      rcases c3374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
    have u26 : v21 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u24
      · exact a
    have u27 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v23 := by
      rcases c3375 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd u25 a
      · exact absurd a n3
    have u29 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u27
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u17
    have u30 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u28
    have u31 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u30 a
      · exact a
    rcases c3265 with a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u27
    · exact absurd a u31
  have c3414 : v9 ∨ v16 ∨ v19 := by
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
    have u8 : ¬v15 := c3309
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n2
    have u11 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n0
      · exact a
    have u12 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    have u13 : v8 := by
      rcases c3413 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v1 := by
      rcases c3411 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
    have u17 : v21 := by
      rcases c3159 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n1
      · exact a
    have u18 : v7 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n1
    have u19 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v26 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v18 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u14
      · exact a
      · exact absurd a u22
    have u26 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u23
    have u27 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v17 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u15
      · exact a
      · exact absurd a u24
    rcases c85 with a|a|a
    · exact absurd u17 a
    · exact absurd u28 a
    · exact absurd u25 a
  have c3415 : ¬v1 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 := by
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
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : v9 := by
      rcases c3414 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n2
    have u11 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u15
  have c3416 : ¬v26 ∨ v16 ∨ v19 := by
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
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : v9 := by
      rcases c3414 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u14 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n2
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v1 := by
      rcases c3415 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
    have u19 : v3 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n1
    have u20 : v4 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u19 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
    have u24 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u6
    have u25 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v29 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u10
  have c3417 : ¬v36 ∨ v29 ∨ v30 ∨ v35 := by
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
    have u4 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd n0 a
  have c3418 : v1 ∨ v16 ∨ v19 := by
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
    have u8 : ¬v15 := c3309
    have u9 : v9 := by
      rcases c3414 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v26 := by
      rcases c3416 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u12 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n2
    have u13 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : v3 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n1
    have u17 : v4 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u16 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u19
    have u21 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u7
    have u22 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u24 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u27
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u28
  have c3419 : v16 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
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
    have u7 : ¬v15 := c3309
    have u8 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n1
      · exact a
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n1
    have u11 : v1 := by
      rcases c3418 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u12 : ¬v26 := by
      rcases c3416 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u13 : v9 := by
      rcases c3414 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u14 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : v33 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u26
    have u28 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u29 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd u22 a
    have u30 : ¬v21 := by
      rcases c3354 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u31 : v24 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u13 a
      · exact a
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u20
    have u32 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u31 a
    have u35 : v40 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u33
      · exact absurd a u12
      · exact absurd a u34
      · exact absurd u22 a
      · exact absurd a u28
      · exact a
    have u36 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a u30
      · exact absurd a u12
      · exact absurd a u34
      · exact absurd a u32
    have u37 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u35 a
    have u38 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a u36
      · exact absurd a u34
      · exact absurd a u37
      · exact absurd a u9
    have u39 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u38 a
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u39
    · exact absurd u38 a
    · exact absurd a u21
  have c3420 : ¬v17 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u5 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n3
    have u6 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n3
      · exact a
    have u7 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v27 := by
      rcases c1798 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
    have u11 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact a
    rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3421 : ¬v1 ∨ v10 ∨ v11 ∨ v19 := by
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
    have u7 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n3
    have u8 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n3
    have u9 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v4 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v5 := by
      rcases c1826 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v33 := by
      rcases c3365 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n3
    have u14 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v17 := by
      rcases c3420 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
    have u18 : v24 := by
      rcases c3265 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u17
      · exact a
    have u19 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u18 a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n1
  have c3422 : ¬v24 ∨ v4 ∨ v8 ∨ v10 ∨ v11 ∨ v17 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c3421 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u5 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact a
    have u7 : ¬v18 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n3
    rcases c3342 with a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u2
  have c3423 : v4 ∨ v8 ∨ v10 ∨ v11 ∨ v17 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u9 : ¬v1 := by
      rcases c3421 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u10 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u11 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n5
    have u12 : ¬v3 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v24 := by
      rcases c3422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v31 := by
      rcases c3265 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
    have u15 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v36 := by
      rcases c3417 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
    have u20 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact a
    have u21 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v18 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n2
  have c3424 : ¬v22 ∨ v6 ∨ v13 ∨ ¬v16 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n4
    have u7 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n3 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
  have c3425 : v17 ∨ ¬v9 ∨ v19 := by
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
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n2
    have u13 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n2
    have u14 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u15 : ¬v1 := by
      rcases c3421 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
    have u16 : v4 := by
      rcases c3423 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
    have u17 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
    have u20 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u5
    have u21 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v22 := by
      rcases c3424 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u19
    have u24 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u23
    have u25 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v5 := by
      rcases c3365 with a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u7
      · exact absurd u13 a
      · exact absurd a n2
    have u28 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u22
    have u29 : v20 := by
      rcases c3387 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u27 a
      · exact absurd a u11
      · exact a
      · exact absurd a u28
      · exact absurd a u14
    have u30 : v28 := by
      rcases c3381 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u28
      · exact a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u19
    have u31 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u30 a
      · exact a
    rcases c1281 with a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u13 a
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u28
  have c3426 : ¬v4 ∨ v1 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v27 ∨ v34 := by
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
    have u4 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u7 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    rcases c3295 with a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u6
  have c3427 : v22 ∨ v1 ∨ v4 ∨ v8 ∨ v11 ∨ ¬v17 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := c3309
    have u4 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
    have u5 : v31 := by
      rcases c3420 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u4
    have u6 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v36 := by
      rcases c3417 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n0
  have c3428 : ¬v9 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n1
      · exact a
    have u9 : ¬v1 := by
      rcases c3421 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n1
    have u10 : v17 := by
      rcases c3425 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u11 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c1798 with a|a|a|a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
    have u14 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v4 := by
      rcases c3426 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u8
    have u16 : v22 := by
      rcases c3427 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a n1
    have u17 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u17
    have u19 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    rcases c1805 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u20
  have c3429 : ¬v17 ∨ v4 ∨ v11 ∨ v19 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n0 a
    have u6 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u2
    have u7 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v29 := by
      rcases c1805 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u8
    rcases c124 with a|a
    · exact absurd u6 a
    · exact absurd u9 a
  have c3430 : ¬v22 ∨ v4 ∨ v11 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u10 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n3
    have u11 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n3
    have u12 : ¬v17 := by
      rcases c3429 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u13 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u8
    have u14 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
    have u16 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v5 := by
      rcases c3365 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n3
    have u18 : v6 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a u3
      · exact absurd a u11
    rcases c3243 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u18 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u7
  have c3431 : v25 ∨ v1 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
      rcases c3371 with a|a
      · exact a
      · exact absurd a n6
    have u9 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n6
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n6
    have u11 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n6
    have u12 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n6
      · exact a
    have u13 : ¬v22 := by
      rcases c3430 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u14 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
    have u15 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v8 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd u14 a
    have u20 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u20
    have u22 : v5 := by
      rcases c3365 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n6
    have u23 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : v39 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a u23
      · exact a
      · exact absurd a u20
    have u25 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u19 a
      · exact a
    have u27 : v6 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u10
    have u28 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : v24 := by
      rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd u27 a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u30 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u22 a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : v37 := by
      rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u18
      · exact absurd a u33
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u7
    have u35 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u34 a
      · exact a
    have u36 : v29 := by
      rcases c3258 with a|a|a
      · exact absurd u34 a
      · exact a
      · exact absurd a u17
    rcases c3028 with a|a|a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u13
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u35
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3432 : ¬v25 ∨ v9 ∨ ¬v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
  have c3433 : v36 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u6 : ¬v15 := c3309
    have u7 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n3
    have u8 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c3028 with a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3434 : v17 ∨ v1 ∨ v4 ∨ v11 ∨ v19 := by
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
    have u8 : ¬v15 := c3309
    have u9 : ¬v22 := by
      rcases c3430 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n4
    have u11 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n4
    have u12 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n4
    have u13 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n4
    have u14 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n4
      · exact a
    have u15 : ¬v25 := by
      rcases c3432 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a n0
    have u16 : v18 := by
      rcases c3431 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    have u17 : ¬v27 := by
      rcases c1804 with a|a|a
      · exact absurd u16 a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v23 := by
      rcases c3375 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a n4
    have u19 : v24 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u18
      · exact a
    have u20 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v10 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n3
      · exact a
    have u23 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u23
      · exact a
    have u25 : v36 := by
      rcases c3433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u20
    have u26 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v33 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u17
      · exact a
      · exact absurd a u26
      · exact absurd a u29
    have u32 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u28
    have u33 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u30
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u32
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u33
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u7
  have c3435 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v18 ∨ v19 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u6 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u7 : ¬v1 := by
      rcases c3421 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u8 : ¬v22 := by
      rcases c3430 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    have u9 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n5
    have u10 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n5
    have u11 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n5
    have u12 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n5
    have u13 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n5
      · exact a
    have u14 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : v8 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd u6 a
    have u17 : v17 := by
      rcases c3434 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    have u18 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v41 := by
      rcases c3284 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u18
    have u20 : v5 := by
      rcases c3365 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n5
    have u21 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v27 := by
      rcases c1798 with a|a|a|a
      · exact absurd u17 a
      · exact absurd u10 a
      · exact a
      · exact absurd a u13
    have u24 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u17 a
    have u25 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u13
    have u26 : v7 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u7
    rcases c33 with a|a|a
    · exact absurd u20 a
    · exact absurd u25 a
    · exact absurd u26 a
  have c3436 : v4 ∨ v1 ∨ v11 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u6 : ¬v22 := by
      rcases c3430 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n3
    have u8 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n3
    have u9 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n3
    have u11 : v17 := by
      rcases c3434 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u11 a
    have u14 : v8 := by
      rcases c3427 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n3
    have u15 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v25 := by
      rcases c3435 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u13
    have u18 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v7 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n1
    have u20 : v33 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u20 a
    rcases c3420 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u21
  have c3437 : ¬v25 ∨ ¬v4 ∨ v19 := by
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
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n2
    have u15 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n2
    have u16 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n2
    have u17 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n2
      · exact a
    have u18 : v17 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u19 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u14 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u10
    have u23 : v33 := by
      rcases c3303 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
    have u24 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u11
  have c3438 : ¬v17 ∨ v1 ∨ ¬v4 ∨ v18 ∨ v19 := by
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
    have u7 : ¬v25 := by
      rcases c3437 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
    have u8 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n4
    have u10 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n4
    have u11 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n4
      · exact a
    have u12 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v27 := by
      rcases c1798 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
    have u15 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u14
    have u16 : v33 := by
      rcases c3303 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v26 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd a u15
    have u22 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u16 a
    have u24 : ¬v36 := by
      rcases c3417 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u23
    have u25 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u22
    have u26 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u25 a
      · exact a
    rcases c3426 with a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u11
  have c3439 : ¬v33 ∨ v9 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v25 ∨ v27 ∨ v40 := by
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
    have u5 : ¬v15 := c3309
    have u6 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v26 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n7
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u8 a
      · exact a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u10
  have c3440 : v22 ∨ v1 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u7 : ¬v25 := by
      rcases c3437 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
    have u8 : ¬v6 := by
      rcases c3322 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v17 := by
      rcases c3438 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v2 := by
      rcases c3371 with a|a
      · exact a
      · exact absurd a n4
    have u11 : v16 := by
      rcases c3419 with a|a
      · exact a
      · exact absurd a n4
    have u12 : ¬v12 := by
      rcases c3401 with a|a
      · exact a
      · exact absurd a n4
    have u13 : ¬v9 := by
      rcases c3428 with a|a
      · exact a
      · exact absurd a n4
    have u14 : ¬v34 := by
      rcases c3335 with a|a
      · exact absurd a n4
      · exact a
    have u15 : v21 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    have u16 : ¬v27 := by
      rcases c3032 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u16
    have u18 : ¬v33 := by
      rcases c3439 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
    have u19 : v5 := by
      rcases c3365 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a n4
    have u20 : v13 := by
      rcases c3387 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
    have u21 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v23 := by
      rcases c1116 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
    have u24 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u25
    have u28 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u5
    have u29 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n0
    rcases c3381 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u27
  exact ⟨c3395, c3401, c3417, c3419, c3420, c3421, c3426, c3428, c3430, c3433, c3436, c3437, c3438, c3440⟩
