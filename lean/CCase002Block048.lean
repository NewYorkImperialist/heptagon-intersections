import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2400-2449 of the 2934-step refutation of ccase002: 112 core clauses and 85 earlier-derived ones give 16 more. -/
theorem CCase002_block048
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c137 : ¬v32 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c168 : ¬v48 ∨ ¬v43)
    (c173 : ¬v48 ∨ ¬v44)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c196 : v43 ∨ ¬v9 ∨ v19 ∨ v44 ∨ v17 ∨ v45 ∨ v8 ∨ v16 ∨ v12 ∨ v1 ∨ v11 ∨ v10 ∨ v5 ∨ v2)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c291 : ¬v48 ∨ v41 ∨ v6 ∨ v42 ∨ v40 ∨ v7 ∨ v47 ∨ v49)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c355 : v29 ∨ v43 ∨ v35 ∨ v37 ∨ v44 ∨ v48 ∨ v14 ∨ v1 ∨ v8 ∨ v41 ∨ v9 ∨ v34 ∨ ¬v36 ∨ v42)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c486 : ¬v48 ∨ v41 ∨ v40 ∨ v47 ∨ v49 ∨ v5 ∨ v42 ∨ v6)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1380 : v3 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1388 : ¬v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1807 : ¬v25 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2037 : v8 ∨ v15 ∨ ¬v16 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2347 : ¬v31 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ ¬v23)
    (c2363 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v25 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2578 : v4 ∨ ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2580 : ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2585 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2722 : ¬v27 ∨ v16 ∨ v48 ∨ v49)
    (c2723 : v15 ∨ v1 ∨ v8 ∨ v16 ∨ v28 ∨ ¬v32 ∨ v43 ∨ v49)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2790 : v48 ∨ v49)
    (c2805 : v13 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49)
    (c2856 : v22 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v49)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2876 : ¬v31 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v21 ∨ v49)
    (c2887 : v19 ∨ v20 ∨ ¬v27 ∨ ¬v32)
    (c2892 : v28 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2904 : ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2928 : ¬v29 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49)
    (c2949 : ¬v32 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v26 ∨ v45 ∨ v46 ∨ v47)
    (c2952 : ¬v34 ∨ ¬v1 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v49)
    (c2955 : v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47)
    (c2961 : v23 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v49)
    (c2964 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c2969 : ¬v39 ∨ v6 ∨ v7 ∨ v49)
    (c2976 : v34 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47)
    (c2986 : v27 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49)
    : (¬v16 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v12 ∨ ¬v17) ∧ (¬v17 ∨ v20 ∨ v26 ∨ v49) ∧ (¬v4 ∨ v1 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v49) ∧ (v4 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v11 ∨ v3 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v25 ∨ v18 ∨ ¬v19 ∨ v20 ∨ ¬v21) ∧ (¬v4 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v49) ∧ (¬v36 ∨ v5 ∨ v6 ∨ v49) ∧ (¬v12 ∨ v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20) ∧ (v5 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49) ∧ (v3 ∨ v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45) ∧ (v4 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v27 ∨ ¬v16 ∨ v17 ∨ ¬v21) ∧ (¬v21 ∨ v20 ∨ v26 ∨ v49) ∧ (v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49) := by
  have c2987 : ¬v16 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v12 ∨ ¬v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u1
  have c2989 : v21 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v27 := by
      rcases c2986 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v11 := by
      rcases c2961 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
    have u14 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u19
      · exact a
      · exact absurd n1 a
    have u21 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u23 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u15
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u5
    have u24 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u25 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u26 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u27 : ¬v16 := by
      rcases c2987 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd n1 a
    have u28 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
    have u29 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd n1 a
    have u30 : ¬v34 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    rcases c1802 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u29
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u30
  have c2990 : ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v27 := by
      rcases c2986 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v21 := by
      rcases c2989 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u9 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u11 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u4
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
  have c2991 : v1 ∨ v5 ∨ v6 ∨ v8 ∨ v12 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n15
    have u2 : v13 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact a
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n16
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u2 a
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
    have u10 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a u9
    have u11 : v3 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n16
    have u12 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n16
    have u14 : v19 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u15 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v32 := by
      rcases c2723 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n15
      · exact a
      · exact absurd a u9
      · exact absurd a n16
    have u17 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n14
      · exact absurd a u16
    have u18 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u17 a
    have u19 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n16
    have u20 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u19 a
      · exact a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a n11
  have c2992 : v9 ∨ v5 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n8 a
      · exact a
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
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v2 := by
      rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u14 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v40 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u18
  have c2993 : v1 ∨ v5 ∨ v8 ∨ v12 ∨ v14 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v26 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u7 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u8 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : v15 := by
      rcases c2991 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u15 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u14 a
      · exact absurd n7 a
      · exact a
    have u16 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u14 a
      · exact absurd n7 a
      · exact a
    have u17 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd n9 a
      · exact a
    have u18 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u9
    have u19 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v9 := by
      rcases c2992 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a u17
      · exact absurd a n10
    have u21 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v2 := by
      rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u20 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n1
      · exact a
    have u24 : v3 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
    have u25 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u17
    rcases c15 with a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2994 : v5 ∨ v6 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v18 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n10
    have u4 : v19 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n3 a
    rcases c922 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2995 : v19 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v17 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n8 a
      · exact a
    have u2 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
    have u3 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n9
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u1
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n7
  have c2996 : v26 ∨ v5 ∨ v8 ∨ v14 ∨ v16 ∨ v20 ∨ ¬v21 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
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
    have u14 : ¬v12 := by
      rcases c2994 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
    have u15 : v1 := by
      rcases c2993 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd a n8
    have u16 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u17 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u18 : v19 := by
      rcases c2995 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
    have u22 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u19
    have u23 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u24 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
    have u25 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u19
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u26 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u29 : v40 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u26
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u8
    have u30 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u29 a
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u30
    · exact absurd a u25
    · exact absurd a u31
    · exact absurd u29 a
    · exact absurd a u10
    · exact absurd a u9
  have c2997 : ¬v19 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v17 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v13 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n7
    have u12 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v49 := by
      rcases c2017 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
      · exact a
    have u16 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n14
      · exact absurd a u8
    have u17 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u16 a
    rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n13
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a n14
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd u11 a
    · exact absurd a u13
  have c2998 : v4 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v2 := by
      rcases c2578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v3 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u3
    rcases c330 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c2999 : ¬v4 ∨ v1 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
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
    have u8 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u11 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v31 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
    rcases c128 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c3000 : v18 ∨ v1 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
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
    have u7 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v12 := by
      rcases c2998 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c51 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c3001 : v14 ∨ v8 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v26 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : v5 := by
      rcases c2996 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n6 a
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2722 with a|a|a|a
      · exact absurd n6 a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
    have u8 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u9 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
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
    have u14 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u15 : ¬v19 := by
      rcases c2997 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd n6 a
      · exact a
    have u17 : v18 := by
      rcases c3000 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a n7
    have u18 : v13 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd u17 a
      · exact absurd a u2
      · exact absurd a u3
    rcases c941 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u9
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u4
  have c3002 : ¬v4 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v1 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c10 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c3003 : ¬v8 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v26 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u12 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u13 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u14 : ¬v19 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u8
    have u15 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u21 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd n5 a
      · exact a
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u23 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u21
    have u24 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u25 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u16
    have u26 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
    have u27 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n6
    have u28 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u29 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u29
      · exact absurd a u13
      · exact absurd a u31
      · exact a
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a n6
    have u33 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u28
      · exact a
      · exact absurd a u30
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u34 : v33 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u21
      · exact a
      · exact absurd a u22
      · exact absurd u32 a
      · exact absurd a u16
      · exact absurd a u15
    rcases c130 with a|a
    · exact absurd u34 a
    · exact absurd u33 a
  have c3004 : ¬v27 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u8 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
    have u9 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v8 := by
      rcases c3003 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n4
    have u16 : v14 := by
      rcases c3001 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n4
    have u17 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v19 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u23 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u24 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
    have u25 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u26 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u24
    have u27 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u28 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
    have u29 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
    have u30 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u31 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u32 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u30 a
      · exact a
    have u34 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u30 a
    have u35 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u32
      · exact absurd a u8
      · exact absurd a u34
      · exact a
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a n4
    have u36 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u31
      · exact a
      · exact absurd a u33
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u37 : v33 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u24
      · exact a
      · exact absurd a u25
      · exact absurd u35 a
      · exact absurd a u11
      · exact absurd a u10
    rcases c130 with a|a
    · exact absurd u37 a
    · exact absurd u36 a
  have c3005 : ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v49 := by
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
    have u6 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v4 := by
      rcases c3002 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v12 := by
      rcases c2998 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c51 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c3006 : ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
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
    have u5 : v32 := by
      rcases c3005 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
    have u6 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v39 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u10 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v7 := by
      rcases c2969 with a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
    rcases c28 with a|a|a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c3007 : v17 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v49 := by
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
    have u7 : v24 := by
      rcases c3006 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd u7 a
    have u11 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
    have u12 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u10
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u15 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v4 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
    have u18 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u10
    have u19 : v12 := by
      rcases c2998 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c51 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c3008 : v4 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    rcases c2998 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3009 : ¬v11 ∨ v3 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v31 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd n5 a
    have u7 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u6
  have c3010 : v27 ∨ ¬v5 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n5
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
    have u9 : v23 := by
      rcases c3007 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c1850 with a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
    have u13 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u9 a
      · exact absurd a u11
    have u14 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u17 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
    have u20 : ¬v11 := by
      rcases c3009 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u1
    have u22 : ¬v10 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u17
    have u23 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n6
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u24 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u27 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u25
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n8
    have u28 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u26 a
      · exact a
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u28
    · exact absurd a u14
    · exact absurd u27 a
    · exact absurd a u5
    · exact absurd a u4
  have c3011 : v16 ∨ ¬v5 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c3004 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
    have u2 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
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
    have u10 : v25 := by
      rcases c3010 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u13 : v3 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u17 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u20 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u16
    have u21 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u20 a
      · exact a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u22
  have c3012 : ¬v25 ∨ v18 ∨ ¬v19 ∨ v20 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u6 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u5
      · exact a
    have u9 : v12 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
    rcases c55 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c3013 : ¬v5 ∨ v16 ∨ v18 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c3004 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v19 := by
      rcases c3011 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v25 := by
      rcases c3012 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd n4 a
    have u8 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
    have u11 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u1
    have u12 : v28 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u1
      · exact a
    have u13 : ¬v1 := by
      rcases c2521 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u14 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u19 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u16
  have c3014 : ¬v4 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v49 := by
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
    have u7 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    have u8 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n5
  have c3015 : v1 ∨ v4 ∨ v6 ∨ v8 ∨ v11 ∨ v13 ∨ v14 ∨ v15 ∨ v18 ∨ v22 ∨ v25 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
    have u5 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
    have u6 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n12
    have u7 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a u7
  have c3016 : v36 ∨ v6 ∨ v8 ∨ v10 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v4 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n13
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v1 := by
      rcases c3015 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u13 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n13
    have u15 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
    have u16 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v40 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n1
    have u20 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u19 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a n12
    · exact absurd a u20
  have c3017 : ¬v19 ∨ v16 ∨ v18 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c3012 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd n4 a
    have u4 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
    have u5 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
    have u6 : ¬v5 := by
      rcases c3013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v27 := by
      rcases c3004 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u9 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u7
    have u11 : v28 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u7
      · exact a
    have u12 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v36 := by
      rcases c3016 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n6
    have u17 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u16 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a u9
  have c3018 : ¬v36 ∨ v5 ∨ v6 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v47 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
    rcases c182 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c3019 : v12 ∨ v4 ∨ v5 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v39 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c1307 with a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c3020 : ¬v12 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n0 a
  have c3021 : ¬v12 ∨ v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3020 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c3022 : v18 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v27 := by
      rcases c3004 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v5 := by
      rcases c3013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v19 := by
      rcases c3017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v12 := by
      rcases c3021 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
    have u13 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : v4 := by
      rcases c3019 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : v7 := by
      rcases c2964 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
    have u18 : ¬v1 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
    have u19 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u16 a
    have u20 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd u16 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u20 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd u17 a
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u9
  have c3023 : v5 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v7 := by
      rcases c2964 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
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
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u8
  have c3024 : ¬v12 ∨ v17 ∨ ¬v18 ∨ ¬v21 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u6 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u8 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u2
  have c3025 : v11 ∨ v12 ∨ v17 ∨ ¬v18 ∨ v20 ∨ ¬v21 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n5 a
      · exact absurd n3 a
      · exact a
    have u3 : v10 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    have u4 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n5 a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u6
  have c3026 : v3 ∨ v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v5 := by
      rcases c2262 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
    have u4 : v11 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n4
      · exact a
    have u5 : v48 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n13
      · exact a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n14
      · exact absurd a n4
    have u6 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v49 := by
      rcases c184 with a|a
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
    have u12 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n12
    have u13 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v1 := by
      rcases c2521 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u11
    have u17 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u12
    have u18 : v21 := by
      rcases c2876 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u9
    have u19 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u19
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u7
  have c3027 : v25 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v18 := by
      rcases c3022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v27 := by
      rcases c3004 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
    have u3 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v12 := by
      rcases c3024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
    have u13 : v11 := by
      rcases c3025 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
    have u14 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v28 := by
      rcases c1197 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
    have u19 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v4 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n5
    have u23 : v3 := by
      rcases c3026 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u24 : v2 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u23 a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u16
    have u25 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u23 a
    have u26 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
    rcases c2964 with a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
  have c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n2
  have c3029 : v16 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v18 := by
      rcases c3022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v27 := by
      rcases c3004 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
    have u3 : v25 := by
      rcases c3027 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u8 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u18 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u11
    have u19 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u11
    have u20 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u11
    have u21 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u11
    have u22 : ¬v12 := by
      rcases c1388 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u11
    have u23 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v4 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u26 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u20
    have u27 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u13
    have u28 : ¬v36 := by
      rcases c3018 with a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a n4
    have u29 : ¬v29 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u30 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u23
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u10
    have u31 : ¬v34 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
    have u32 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u14
    have u33 : v33 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
    have u34 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u32
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u27
      · exact a
    rcases c134 with a|a
    · exact absurd u34 a
    · exact absurd u33 a
  have c3030 : v4 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
    rcases c3019 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
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
  have c3031 : v27 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v6 := by
      rcases c2856 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v16 := by
      rcases c3029 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
    have u14 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u16 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u7
      · exact a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v25 := by
      rcases c1807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a u1
    have u21 : v4 := by
      rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u23 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u22 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u22 a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n6
    have u26 : v23 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u27 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u29 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u32 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u30
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a n6
    have u33 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u31 a
      · exact a
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u35
    · exact absurd a u33
    · exact absurd a u34
    · exact absurd a u25
    · exact absurd u32 a
    · exact absurd a u9
    · exact absurd a u8
  have c3032 : ¬v27 ∨ ¬v16 ∨ v17 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u7 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    have u8 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u7 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u8
  have c3033 : v28 ∨ v12 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v16 := by
      rcases c3029 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v27 := by
      rcases c3032 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd n3 a
    have u7 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n4
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a n0
    have u16 : v22 := by
      rcases c3031 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u17 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v4 := by
      rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
    have u21 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a n6
    have u24 : v8 := by
      rcases c2037 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n0
    have u25 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v38 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u12
    have u27 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u30 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u28
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a n6
    have u31 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u29 a
      · exact a
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u23
    · exact absurd u30 a
    · exact absurd a u11
    · exact absurd a u10
  have c3034 : v12 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v16 := by
      rcases c3029 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v27 := by
      rcases c3032 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd n2 a
    have u7 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n3
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : v28 := by
      rcases c3033 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u18
    have u20 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v34 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u25 : v4 := by
      rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u26 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
    have u27 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
    have u28 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u26 a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a n5
    have u30 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u31 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u34 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a u32
      · exact a
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a n5
    have u35 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u33 a
      · exact a
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u35
    · exact absurd a u36
    · exact absurd a u29
    · exact absurd u34 a
    · exact absurd a u11
    · exact absurd a u10
  have c3035 : v23 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v16 := by
      rcases c3029 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n0
    have u5 : v12 := by
      rcases c3034 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v24 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u4
  have c3036 : ¬v21 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v16 := by
      rcases c3029 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v27 := by
      rcases c3032 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd n0 a
    have u12 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u14 : v23 := by
      rcases c3035 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a u15
    have u20 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u15
    have u21 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u12
      · exact a
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v4 := by
      rcases c3030 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u25 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
    have u26 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
    have u27 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u25 a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a n3
    have u29 : v38 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
    have u30 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u33 : v40 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u30
      · exact absurd a u2
      · exact absurd a u31
      · exact a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a n3
    have u34 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u32 a
      · exact a
    have u36 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u32 a
      · exact a
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u36
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u28
    · exact absurd u33 a
    · exact absurd a u5
    · exact absurd a u4
  have c3038 : v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
    have u5 : ¬v29 := by
      rcases c2805 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u6 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
  exact ⟨c2987, c2990, c2999, c3008, c3009, c3012, c3014, c3018, c3021, c3023, c3026, c3028, c3030, c3032, c3036, c3038⟩
