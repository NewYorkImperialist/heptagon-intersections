import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2700-2749 of the 2915-step refutation of ccase001: 117 core clauses and 78 earlier-derived ones give 11 more. -/
theorem CCase001_block054
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c74 : v11 ∨ v10 ∨ v12 ∨ v13 ∨ v8 ∨ v9)
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
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c102 : ¬v22 ∨ ¬v23)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c115 : ¬v27 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c255 : ¬v49 ∨ v42 ∨ v35 ∨ v48 ∨ v6 ∨ v7 ∨ v39 ∨ v4 ∨ v34 ∨ v29 ∨ v43 ∨ v46 ∨ v47 ∨ v36)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c326 : ¬v41 ∨ v48 ∨ v34 ∨ v12 ∨ v14 ∨ v35 ∨ v13 ∨ v29 ∨ v42 ∨ v36 ∨ v40 ∨ v43 ∨ v47 ∨ v6)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c353 : ¬v1 ∨ v7 ∨ v44 ∨ v11 ∨ v15 ∨ v2 ∨ v8 ∨ v16 ∨ v3 ∨ v4 ∨ v21 ∨ v43 ∨ v14 ∨ v46)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c570 : v36 ∨ ¬v33 ∨ v26 ∨ v47 ∨ v39 ∨ v40 ∨ v32 ∨ v22 ∨ v34 ∨ v27 ∨ v35 ∨ v46 ∨ v48 ∨ v29)
    (c579 : ¬v49 ∨ v42 ∨ v3 ∨ v14 ∨ v13 ∨ v38 ∨ v8 ∨ v6 ∨ v7 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v48)
    (c585 : v43 ∨ ¬v1 ∨ v37 ∨ v42 ∨ v2 ∨ v7 ∨ v12 ∨ v5 ∨ v14 ∨ v8 ∨ v36 ∨ v6 ∨ v44 ∨ v47)
    (c589 : ¬v49 ∨ v36 ∨ v6 ∨ v41 ∨ v48 ∨ v7 ∨ v43 ∨ v42)
    (c602 : v43 ∨ ¬v1 ∨ v44 ∨ v2 ∨ v9 ∨ v7 ∨ v14 ∨ v8)
    (c660 : v4 ∨ v2 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1134 : v19 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1518 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1642 : ¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1647 : v18 ∨ ¬v1 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1729 : v35 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1945 : v12 ∨ ¬v2 ∨ v6 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2216 : ¬v32 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v40 ∨ v47)
    (c2227 : ¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2644 : ¬v8 ∨ ¬v2 ∨ v4 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c3024 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3073 : ¬v19 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c3140 : v49)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3163 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14)
    (c3167 : ¬v15 ∨ v8 ∨ v14 ∨ ¬v25)
    (c3173 : ¬v22 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v18 ∨ v19)
    (c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18)
    (c3219 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c3234 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c3282 : v1 ∨ v8 ∨ v14 ∨ v21)
    (c3299 : ¬v11 ∨ ¬v1 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c3315 : v12 ∨ ¬v1 ∨ v4 ∨ ¬v5 ∨ v11)
    (c3319 : v11 ∨ ¬v1 ∨ ¬v4 ∨ v12)
    (c3321 : v30 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v21 ∨ v38 ∨ v39 ∨ v40 ∨ v41)
    (c3324 : v23 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v30 ∨ v38 ∨ v39 ∨ v40)
    (c3325 : ¬v42 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30)
    (c3326 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v14)
    (c3328 : ¬v23 ∨ v4 ∨ v11 ∨ v30 ∨ v38 ∨ v39)
    (c3338 : v36 ∨ ¬v1 ∨ ¬v4 ∨ v41 ∨ v42)
    (c3340 : v11 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v41)
    (c3343 : v6 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v11 ∨ ¬v12 ∨ v14 ∨ v21 ∨ v30 ∨ v41)
    (c3344 : v6 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v14 ∨ ¬v16 ∨ v30 ∨ v41)
    : (¬v34 ∨ ¬v36) ∧ (¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v11 ∨ v14) ∧ (v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34) ∧ (v9 ∨ ¬v1 ∨ v8 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v18) ∧ (v18 ∨ v4 ∨ v11 ∨ ¬v41) ∧ (v35 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v34 ∨ ¬v41) ∧ (v30 ∨ v8 ∨ v14 ∨ v21) ∧ (v12 ∨ v8 ∨ v14 ∨ v21) ∧ (¬v13 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v14 ∨ ¬v30) ∧ (v4 ∨ v6 ∨ v11 ∨ v13 ∨ ¬v30) ∧ (¬v4 ∨ ¬v1 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v14) := by
  have c3345 : v9 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u9 : v11 := by
      rcases c3340 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u13 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u14 : ¬v12 := by
      rcases c3343 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u9 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v16 := by
      rcases c3344 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : v31 := by
      rcases c2028 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n8
      · exact a
    have u23 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u24 a
    rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3346 : v40 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v38 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c3340 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    rcases c3321 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n9
  have c3347 : v12 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n11
    have u9 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v28 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u8 a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u11
    have u15 : ¬v8 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd n5 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v33 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
    have u24 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u22
    rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
  have c3348 : v40 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ v6 ∨ v7 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u9 : v27 := by
      rcases c3347 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n16
    have u10 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v19 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v10 := by
      rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n7 a
    have u20 : v33 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a n9
      · exact a
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a u16
      · exact absurd a n16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
    have u21 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u21
    have u26 : v36 := by
      rcases c255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact a
    rcases c3234 with a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u24
  have c3349 : ¬v34 ∨ ¬v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3234 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
  have c3350 : v9 ∨ v4 ∨ v6 ∨ v7 ∨ v8 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u5
      · exact a
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
    have u9 : v2 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n4
    have u10 : v16 := by
      rcases c3348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
    have u11 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u10 a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3351 : ¬v27 ∨ ¬v1 ∨ v7 ∨ v8 ∨ ¬v11 ∨ ¬v12 ∨ v14 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    rcases c3299 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c3352 : v6 ∨ v4 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ v30 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u8 : v11 := by
      rcases c3340 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v7 := by
      rcases c3345 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v2 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n2
    have u12 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u11 a
    have u13 : v36 := by
      rcases c589 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u9
    have u14 : ¬v34 := by
      rcases c3349 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v13 := by
      rcases c3346 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n8
    have u19 : v12 := by
      rcases c3350 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd u8 a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n8
    have u20 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u8 a
    have u21 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u4
    have u22 : ¬v27 := by
      rcases c3351 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u15
    have u23 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u22
      · exact a
      · exact absurd a n8
      · exact absurd a u14
    have u24 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : ¬v26 := by
      rcases c665 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u14
    rcases c3219 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u29
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a u9
  have c3353 : ¬v20 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n1
  have c3354 : v27 ∨ v6 ∨ v13 ∨ v20 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v34 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c897 with a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
  have c3356 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3357 : v21 ∨ v4 ∨ v6 ∨ v8 ∨ v14 ∨ v15 ∨ v30 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u9 : v11 := by
      rcases c3340 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v9 := by
      rcases c3352 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v5 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
      · exact a
    have u17 : ¬v20 := by
      rcases c3353 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a u14
    have u18 : v27 := by
      rcases c3354 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u10
    have u19 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v19 := by
      rcases c3356 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
    have u23 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u11
    have u30 : v7 := by
      rcases c255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u29
    have u31 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u30 a
    have u32 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u31
      · exact absurd a u16
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a n1
      · exact a
    have u33 : v17 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u31
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c91 with a|a
    · exact absurd u33 a
    · exact absurd u32 a
  have c3358 : ¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v11 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u9 : v9 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n2
    have u10 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a u10
    have u12 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u9 a
      · exact absurd n3 a
      · exact a
    have u13 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u6
      · exact a
    have u14 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd n3 a
      · exact absurd a u12
    have u15 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u13 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd u9 a
    · exact absurd a u16
  have c3359 : v15 ∨ v8 ∨ v14 ∨ v21 ∨ v30 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v11 := by
      rcases c3340 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v6 := by
      rcases c3358 with a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n2
    have u8 : ¬v42 := by
      rcases c3325 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v4 := by
      rcases c3357 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u5 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u9 a
    have u13 : v9 := by
      rcases c3326 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u14 : v36 := by
      rcases c3338 with a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u8
    have u15 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u13 a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u13 a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v34 := by
      rcases c3349 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u15
    have u20 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    have u22 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v20 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u19
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a n5
    · exact absurd a u18
  have c3360 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v26 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    rcases c702 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c3361 : ¬v9 ∨ ¬v1 ∨ v5 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u10 : v4 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a u8
      · exact a
    have u11 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u13 : v15 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd n0 a
      · exact a
    have u14 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : v34 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u14
      · exact a
    rcases c2111 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u6
  have c3362 : ¬v11 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v6 := by
      rcases c3358 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n5
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n6 a
      · exact a
    have u13 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u14 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v9 := by
      rcases c3361 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
    have u16 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd n6 a
    have u17 : v22 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n5
    have u18 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n7
    have u30 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u26 a
    have u31 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u26 a
      · exact a
    have u32 : v40 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u28
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u33 : v42 := by
      rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u30
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    rcases c165 with a|a
    · exact absurd u33 a
    · exact absurd u32 a
  have c3363 : v13 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    have u13 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v11 := by
      rcases c3362 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v4 := by
      rcases c3319 with a|a|a|a
      · exact absurd a u14
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
    have u16 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v22 := by
      rcases c3173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u11
    have u18 : ¬v28 := by
      rcases c1729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v23 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u17
      · exact a
      · exact absurd a u18
    have u20 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u4
  have c3364 : v11 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
    have u8 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v4 := by
      rcases c3319 with a|a|a|a
      · exact absurd a n0
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
    have u14 : ¬v5 := by
      rcases c3315 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u13
      · exact a
      · exact absurd a n0
    have u15 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v22 := by
      rcases c3173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
    have u17 : ¬v28 := by
      rcases c1729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u16
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v23 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u16
      · exact a
      · exact absurd a u17
    have u19 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v33 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u4
  have c3365 : v12 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u9 : v11 := by
      rcases c3364 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u10 : v13 := by
      rcases c3363 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u13 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
    have u14 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd a u11
      · exact absurd a u13
    have u15 : v3 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u5
    have u16 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u14 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd u15 a
    · exact absurd a u2
    · exact absurd a u3
  have c3366 : ¬v11 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v14 ∨ ¬v15 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v6 := by
      rcases c3358 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
    have u9 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u10 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u11 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    have u12 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n5 a
      · exact a
    have u14 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
    have u17 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd n5 a
    have u18 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n5 a
    have u19 : v22 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n4
    have u20 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
    have u27 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u26
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u29 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u15
    have u30 : v38 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u15
      · exact a
      · exact absurd a u27
      · exact absurd a u4
    have u31 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : v42 := by
      rcases c255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u31
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u29
    rcases c160 with a|a
    · exact absurd u32 a
    · exact absurd u30 a
  have c3367 : v9 ∨ ¬v1 ∨ v8 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
    have u8 : v2 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u9 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v10 := by
      rcases c1647 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : v12 := by
      rcases c74 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v19 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u15 a
      · exact a
    rcases c3073 with a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3368 : ¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : v9 := by
      rcases c3326 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u8 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n0 a
  have c3369 : v13 ∨ v4 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v14 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n11
    have u8 : v9 := by
      rcases c3367 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u8 a
      · exact absurd n4 a
      · exact a
    have u10 : v5 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd n4 a
    have u11 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
    have u13 : v15 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u8 a
      · exact a
    have u14 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u15
    · exact absurd a u16
  have c3370 : v41 ∨ v8 ∨ v14 ∨ v21 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v15 := by
      rcases c3359 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u10 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v25 := by
      rcases c3167 with a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u16 : v12 := by
      rcases c3365 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
    have u17 : ¬v4 := by
      rcases c3368 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a n2
    have u18 : ¬v11 := by
      rcases c3366 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n4
    have u19 : v13 := by
      rcases c3369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
    have u20 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u16 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u16 a
    have u22 : v2 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u11
    have u23 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u25
  have c3371 : ¬v13 ∨ ¬v1 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v23 ∨ v30 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    rcases c3324 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c3372 : v18 ∨ v4 ∨ v11 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : v25 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v34 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u4
    have u13 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v33 := by
      rcases c3159 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    rcases c570 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u16 a
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u18
  have c3373 : v11 ∨ v4 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v21 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v41 := by
      rcases c3370 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v18 := by
      rcases c3372 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u9 a
    have u16 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v23 := by
      rcases c3328 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u11
    have u20 : ¬v13 := by
      rcases c3371 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
    have u21 : v2 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u7 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u7 a
      · exact absurd u21 a
      · exact a
    rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u6
  have c3374 : ¬v2 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v36 ∨ v38 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3375 : v17 ∨ v3 ∨ v10 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v34 := by
      rcases c3159 with a|a|a|a
      · exact absurd n3 a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u10
  have c3376 : v4 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v21 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v41 := by
      rcases c3370 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v11 := by
      rcases c3373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v6 := by
      rcases c3358 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n3
    have u16 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
    have u17 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    have u18 : ¬v2 := by
      rcases c3374 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v17 := by
      rcases c3375 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd u7 a
    have u22 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u22
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v31 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u24 a
      · exact absurd a u25
      · exact absurd a n5
      · exact a
    rcases c2863 with a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u10
  have c3377 : ¬v12 ∨ v8 ∨ v14 ∨ v21 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v4 := by
      rcases c3376 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u9 : v9 := by
      rcases c3326 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u10 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd u6 a
  have c3378 : ¬v17 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n7 a
    have u12 : ¬v32 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u3
    have u13 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u3
    have u14 : v33 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u13
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    rcases c326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
  have c3379 : v35 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v34 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : v33 := by
      rcases c3159 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    rcases c326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
  have c3380 : ¬v35 ∨ ¬v1 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v17 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
    have u15 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
    have u16 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v19 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v10 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u15
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v11 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u22 a
    have u24 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u20
      · exact a
    have u25 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u24 a
    rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3381 : v6 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v30 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd n7 a
      · exact a
    have u14 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n7 a
    have u15 : ¬v2 := by
      rcases c3374 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u9
    have u16 : v7 := by
      rcases c585 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
    have u17 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c3378 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
    have u20 : v10 := by
      rcases c3375 with a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd n7 a
    have u21 : ¬v35 := by
      rcases c3380 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u14
    have u22 : v34 := by
      rcases c3379 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n7 a
    have u23 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u24
    have u27 : v19 := by
      rcases c1134 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u6
    have u28 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : v11 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u17
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u30 : v9 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u15
      · exact a
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u3
    rcases c54 with a|a|a
    · exact absurd u30 a
    · exact absurd u20 a
    · exact absurd u29 a
  have c3382 : v13 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v14 ∨ v30 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v6 := by
      rcases c3381 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
    have u6 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v2 := by
      rcases c3163 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u8 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v11 := by
      rcases c3358 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u10 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u11 : v18 := by
      rcases c3372 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n6 a
    have u12 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u4
  have c3383 : ¬v6 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v11 := by
      rcases c3358 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
    have u11 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v15 := by
      rcases c3364 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u14 : v9 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n1
    have u15 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u14 a
      · exact absurd n3 a
      · exact a
    have u16 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v17 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u13
    have u19 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v41 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u10
      · exact a
    have u21 : v30 := by
      rcases c3370 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u22 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    rcases c1823 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u5
  have c3384 : v5 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v17 ∨ v18 ∨ v21 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
    have u7 : ¬v12 := by
      rcases c3377 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v41 := by
      rcases c3370 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v6 := by
      rcases c3383 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u9
    have u11 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v2 := by
      rcases c585 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u5
    have u14 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u16 : v11 := by
      rcases c3372 with a|a|a|a
      · exact absurd a n6
      · exact absurd a u15
      · exact a
      · exact absurd u8 a
    have u17 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u16 a
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a n6
  have c3385 : v4 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v12 := by
      rcases c3377 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v41 := by
      rcases c3370 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v13 := by
      rcases c3382 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u8 a
    have u11 : ¬v6 := by
      rcases c3383 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
    have u12 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a n3
    have u13 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a n3
    have u14 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a n3
    have u15 : v11 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
    have u16 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u10 a
    have u18 : v5 := by
      rcases c3384 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
    have u22 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3159 with a|a|a|a
    · exact absurd u8 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u23
  have c3386 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v14 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : v11 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
    have u8 : v9 := by
      rcases c3326 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u9 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u10 : v41 := by
      rcases c3338 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
    have u11 : v30 := by
      rcases c3382 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd u10 a
    have u12 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    rcases c3159 with a|a|a|a
    · exact absurd u10 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
  have c3387 : v30 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v12 := by
      rcases c3377 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u9 : v41 := by
      rcases c3370 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u10 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v4 := by
      rcases c3386 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u11
    have u13 : v13 := by
      rcases c3382 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u9 a
    have u14 : v7 := by
      rcases c3385 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u15 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v6 := by
      rcases c3383 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u17 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a n2
    have u18 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a n2
    have u19 : v11 := by
      rcases c3372 with a|a|a|a
      · exact absurd a u18
      · exact absurd a u12
      · exact a
      · exact absurd u9 a
    have u20 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u13 a
    have u21 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u19 a
    have u22 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u21
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd u19 a
      · exact absurd a u8
    have u24 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
    rcases c3159 with a|a|a|a
    · exact absurd u9 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
  have c3388 : ¬v7 ∨ ¬v1 ∨ ¬v13 ∨ v17 ∨ v18 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n5 a
    have u11 : v11 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u4
    have u12 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u14 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u15 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u16 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u12
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3389 : ¬v11 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u6 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u7 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
    have u8 : v3 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a u3
  have c3390 : ¬v13 ∨ ¬v1 ∨ v6 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u9 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u10 : ¬v7 := by
      rcases c3388 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd n6 a
    have u11 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u12 : ¬v11 := by
      rcases c3389 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
    have u13 : ¬v4 := by
      rcases c3319 with a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
    rcases c1823 with a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u3
  have c3391 : v6 ∨ ¬v1 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v13 := by
      rcases c3390 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
    have u11 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v19 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u7
    have u13 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u7
  have c3392 : v12 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v30 := by
      rcases c3387 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u8 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v6 := by
      rcases c3391 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u6 a
    have u12 : ¬v11 := by
      rcases c3358 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u13 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u11 a
    have u15 : v19 := by
      rcases c3360 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u9
    rcases c3073 with a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3393 : ¬v13 ∨ ¬v1 ∨ v8 ∨ ¬v12 ∨ v14 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n5 a
    have u11 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v4 := by
      rcases c3326 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n4
    have u13 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u12
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u4
    have u14 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v3 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd u16 a
    · exact absurd a u2
    · exact absurd a u3
  have c3394 : v4 ∨ v6 ∨ v11 ∨ v13 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u3
    have u11 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
    have u12 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u10 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u8
  have c3395 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u7 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd n0 a
    have u8 : v9 := by
      rcases c3326 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
    rcases c55 with a|a|a
    · exact absurd u8 a
    · exact absurd n4 a
    · exact absurd u7 a
  exact ⟨c3349, c3358, c3360, c3367, c3372, c3379, c3387, c3392, c3393, c3394, c3395⟩
