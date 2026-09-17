import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1150-1199 of the 2189-step refutation of ccase000: 126 core clauses and 84 earlier-derived ones give 11 more. -/
theorem CCase000_block023
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21)
    (c71 : ¬v21 ∨ ¬v16)
    (c82 : ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c96 : ¬v28 ∨ ¬v24)
    (c99 : ¬v28 ∨ ¬v25)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c133 : ¬v39 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c155 : ¬v46 ∨ ¬v44)
    (c159 : ¬v46 ∨ ¬v45)
    (c162 : ¬v49 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c213 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v40 ∨ v48 ∨ v49)
    (c214 : ¬v45 ∨ v2 ∨ v42 ∨ v30 ∨ v7 ∨ v31 ∨ v3 ∨ v38 ∨ v39 ∨ v32 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c222 : ¬v46 ∨ v40 ∨ v45 ∨ v3 ∨ v5 ∨ v4 ∨ v39 ∨ v47)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c263 : v36 ∨ ¬v29 ∨ v38 ∨ v37 ∨ v22 ∨ v14 ∨ v35 ∨ v31 ∨ v28 ∨ v24 ∨ v8 ∨ v30 ∨ v9 ∨ v15)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c273 : ¬v31 ∨ v36 ∨ v38 ∨ v37 ∨ v25 ∨ v24 ∨ v11 ∨ v22 ∨ v9 ∨ v29 ∨ v32 ∨ v17 ∨ v30 ∨ v10)
    (c275 : v4 ∨ v6 ∨ ¬v5 ∨ v13 ∨ v11 ∨ v47 ∨ v12 ∨ v48)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c320 : v1 ∨ v9 ∨ v4 ∨ v3 ∨ v15 ∨ v18 ∨ v24 ∨ ¬v11 ∨ v10 ∨ v12 ∨ v19 ∨ v8 ∨ v25 ∨ v26)
    (c331 : ¬v45 ∨ v44 ∨ v46 ∨ v3 ∨ v38 ∨ v2 ∨ v37 ∨ v39)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c359 : v1 ∨ v10 ∨ v3 ∨ v17 ∨ v16 ∨ v2 ∨ ¬v9 ∨ v8)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c446 : v11 ∨ v33 ∨ v31 ∨ v3 ∨ v39 ∨ v5 ∨ v32 ∨ v10 ∨ v44 ∨ ¬v4 ∨ v2 ∨ v9 ∨ v46 ∨ v47)
    (c462 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v9 ∨ v2 ∨ v8)
    (c486 : v3 ∨ ¬v4 ∨ v46 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v47)
    (c509 : ¬v46 ∨ v39 ∨ v38 ∨ v4 ∨ v3 ∨ v5 ∨ v45 ∨ v47)
    (c529 : v43 ∨ ¬v1 ∨ v9 ∨ v7 ∨ v2 ∨ v14 ∨ v49 ∨ v8)
    (c551 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v25 ∨ v18 ∨ v10 ∨ v16)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c728 : ¬v4 ∨ ¬v3 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c836 : ¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42)
    (c903 : ¬v1 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c904 : v26 ∨ ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ v11 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c985 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1022 : ¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1100 : ¬v28 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1197 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1397 : ¬v39 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v46 ∨ v47)
    (c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1464 : v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1486 : v26 ∨ v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1504 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1551 : ¬v40 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1634 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1643 : ¬v1 ∨ ¬v12 ∨ v18 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1654 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c1655 : v13 ∨ v5 ∨ v6 ∨ v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1664 : v11 ∨ v4 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1669 : ¬v37 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v46)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1689 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1695 : v34 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1696 : ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1713 : v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    : (v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v36 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47) ∧ (v8 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v26 ∨ v27 ∨ v33 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48) ∧ (v27 ∨ v2 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49) := by
  have c1715 : v1 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v10 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v7 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
    have u11 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v4 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n8
    have u13 : v6 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
      · exact absurd u13 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u12 a
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n9
  have c1716 : v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n1
    have u2 : v9 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u1 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd u2 a
    · exact absurd a n3
  have c1717 : ¬v8 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v29 ∨ v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v42 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v43 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    rcases c149 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1718 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v29 ∨ v36 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v8 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n10
    have u9 : v35 := by
      rcases c1717 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v42 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    rcases c331 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a n6
  have c1719 : ¬v8 ∨ ¬v3 ∨ ¬v35 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
    have u17 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n6
    rcases c31 with a|a|a|a
    · exact absurd u16 a
    · exact absurd n1 a
    · exact absurd u17 a
    · exact absurd u15 a
  have c1720 : v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v10 ∨ v29 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
    have u11 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
    have u13 : ¬v35 := by
      rcases c1719 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v7 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n10
    have u16 : v6 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    rcases c33 with a|a|a|a
    · exact absurd n2 a
    · exact absurd u12 a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1721 : v29 ∨ v1 ∨ v2 ∨ v10 ∨ v36 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
    have u12 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v3 := by
      rcases c1718 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v8 := by
      rcases c1720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u13 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n1
    have u16 : v9 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u17 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : v4 := by
      rcases c1664 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v7 := by
      rcases c728 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u13 a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a n8
      · exact absurd a n9
    rcases c267 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u17
  have c1722 : ¬v36 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v35 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1148 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
  have c1723 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n1 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c1724 : v4 ∨ v5 ∨ v6 ∨ v10 ∨ v12 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v13 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
  have c1725 : ¬v3 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v6 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u4 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v12 := by
      rcases c1724 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n4
  have c1726 : ¬v12 ∨ ¬v1 ∨ ¬v7 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v3 := by
      rcases c1725 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
    have u16 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
    have u18 : ¬v6 := by
      rcases c19 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact a
    have u19 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact a
    have u20 : ¬v2 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact a
    have u21 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v31 := by
      rcases c446 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd u17 a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u22 a
      · exact a
    rcases c1695 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1727 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c19 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : v11 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1655 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1728 : v47 ∨ v2 ∨ v8 ∨ v10 ∨ v29 ∨ v39 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n9
    have u11 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v1 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v7 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n9
    have u14 : ¬v3 := by
      rcases c1725 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v12 := by
      rcases c1726 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v4 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd u2 a
      · exact absurd a n7
    have u18 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u17
    have u19 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n0
    have u20 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c20 with a|a|a|a
    · exact absurd u12 a
    · exact absurd u19 a
    · exact absurd u13 a
    · exact absurd u20 a
  have c1729 : v10 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v29 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u12 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v7 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u15 : v39 := by
      rcases c1728 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n5
    have u21 : ¬v33 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u22 : v31 := by
      rcases c1397 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v11 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
    have u26 : ¬v5 := by
      rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n7
    have u28 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u4
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u27
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a n0
  have c1730 : v49 ∨ v2 ∨ v8 ∨ v10 ∨ v29 ∨ v42 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
    have u12 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v1 := by
      rcases c1729 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u15 : v39 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u16 : v3 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
    have u17 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u9
    have u18 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u14
    have u19 : v9 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
    have u20 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
    have u24 : v6 := by
      rcases c632 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u14
      · exact a
      · exact absurd u23 a
      · exact absurd a n8
      · exact absurd a n0
    have u25 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a n5
    have u26 : ¬v33 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u20
    have u27 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u26
    rcases c34 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u27 a
    · exact absurd u23 a
    · exact absurd u24 a
  have c1731 : v46 ∨ v2 ∨ v10 ∨ v29 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v1 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
    have u21 : v35 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v3 := by
      rcases c331 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u3
    have u24 : ¬v12 := by
      rcases c1643 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v6 := by
      rcases c14 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u25 a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v4 := by
      rcases c11 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u25 a
      · exact absurd u23 a
      · exact a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c1732 : v13 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
    have u9 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v39 := by
      rcases c1664 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a n6
    have u11 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u13
    have u15 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
    have u16 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u15
    have u17 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
    rcases c20 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u16 a
    · exact absurd n2 a
    · exact absurd u17 a
  have c1733 : v29 ∨ v2 ∨ v10 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n6
    have u12 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v42 := by
      rcases c1731 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v8 := by
      rcases c1730 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u4
    have u21 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u4
    have u23 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v1 := by
      rcases c1732 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v39 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v31 := by
      rcases c1397 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n4
    have u29 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u28 a
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a n2
  have c1734 : v1 ∨ ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v4 := by
      rcases c32 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v6 := by
      rcases c34 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u4 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd n3 a
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n7
  have c1735 : v1 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n13
    have u2 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
  have c1736 : v1 ∨ v2 ∨ ¬v7 ∨ v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v29 := by
      rcases c1733 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u16 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
    have u17 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u18 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n6
    have u20 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v3 := by
      rcases c1734 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v8 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u23
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v6 := by
      rcases c1735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v11 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u25 a
      · exact a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact absurd u25 a
    have u28 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u31 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u12
    rcases c320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd u26 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u30
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u14
  have c1737 : v10 ∨ v1 ∨ v2 ∨ ¬v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v29 := by
      rcases c1733 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v12 := by
      rcases c1736 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd n3 a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n7
    have u22 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u14
    have u23 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n3 a
      · exact absurd u21 a
    have u24 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n3 a
      · exact absurd u21 a
    rcases c446 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd u22 a
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a n5
  have c1738 : v1 ∨ v2 ∨ v10 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v29 := by
      rcases c1733 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u16 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u7
    have u17 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u18 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v7 := by
      rcases c1737 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n6
    have u24 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n6
    have u25 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n6
    have u26 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a n6
    have u27 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n4
    have u28 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u19
    have u29 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u30 : ¬v37 := by
      rcases c1669 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a n3
    have u31 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u30
      · exact absurd a u21
    have u32 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : v3 := by
      rcases c214 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u7
      · exact a
      · exact absurd a u32
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a n3
      · exact absurd a n6
    have u34 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u27 a
      · exact absurd u33 a
      · exact a
      · exact absurd u28 a
    have u35 : v14 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u34
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u36 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u34
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c60 with a|a
    · exact absurd u35 a
    · exact absurd u36 a
  have c1739 : v10 ∨ v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v29 := by
      rcases c1733 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v1 := by
      rcases c1738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
    have u21 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
    have u22 : ¬v11 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u21
    have u24 : ¬v6 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u19 a
      · exact absurd u23 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u25 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v7 := by
      rcases c1221 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd u19 a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n5
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd u19 a
    · exact absurd u27 a
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a n3
  have c1740 : ¬v5 ∨ ¬v1 ∨ v2 ∨ ¬v7 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v49 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v10 := by
      rcases c1739 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
    have u5 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c52 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1741 : ¬v1 ∨ v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v10 := by
      rcases c1739 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v7 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u8
    have u15 : ¬v5 := by
      rcases c1740 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v6 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u15
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
      · exact absurd u14 a
    have u18 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n2
    have u20 : v33 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a n3
    rcases c1654 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u19
  have c1742 : ¬v39 ∨ v1 ∨ ¬v10 ∨ v22 ∨ v27 ∨ v28 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v29 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n6
    have u5 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1338 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1743 : v40 ∨ ¬v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u7 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u8 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1744 : ¬v7 ∨ v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c1741 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v10 := by
      rcases c1739 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v6 := by
      rcases c1022 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v39 := by
      rcases c1742 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v40 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v29 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u11
    rcases c107 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1745 : v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v1 := by
      rcases c1741 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v7 := by
      rcases c1744 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v10 := by
      rcases c1739 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    rcases c1295 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u6
  have c1746 : ¬v39 ∨ v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n5
    have u15 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n5
    have u16 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n5
    have u17 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
    have u18 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n5
    have u19 : v31 := by
      rcases c1397 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u19 a
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u16
  have c1747 : v47 ∨ ¬v6 ∨ v11 ∨ v39 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
    have u12 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
    have u14 : v13 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v5 := by
      rcases c27 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v7 := by
      rcases c29 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u17 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u22 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n5
      · exact absurd a n6
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u24
  have c1748 : ¬v12 ∨ v6 ∨ v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v20 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v35 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c124 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1749 : v13 ∨ v1 ∨ v6 ∨ v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c1748 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
    have u16 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v4 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n7
    have u24 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n7
    have u25 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n7
    have u26 : v16 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u23
      · exact a
    have u27 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : v14 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : v8 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    rcases c45 with a|a
    · exact absurd u29 a
    · exact absurd u28 a
  have c1750 : v1 ∨ v7 ∨ v10 ∨ v11 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v39 := by
      rcases c1746 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v6 := by
      rcases c1747 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v12 := by
      rcases c1748 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v13 := by
      rcases c1749 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a n0
  have c1751 : v10 ∨ v1 ∨ v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v11 := by
      rcases c1750 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a n1
  have c1752 : v1 ∨ v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v10 := by
      rcases c1751 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a n0
  have c1753 : v13 ∨ ¬v1 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
    have u11 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd u10 a
      · exact a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1754 : v6 ∨ v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v1 := by
      rcases c1752 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v12 := by
      rcases c1748 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v13 := by
      rcases c1753 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u21 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v39 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n2
    rcases c143 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1755 : v7 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v6 := by
      rcases c1754 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v1 := by
      rcases c1752 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u11 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u9 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v13 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u9 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u14 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n1
    have u16 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u15
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n2
  have c1756 : ¬v6 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v7 := by
      rcases c1755 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
      · exact absurd n0 a
    have u14 : ¬v1 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u12 a
      · exact absurd n0 a
    have u15 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u12 a
      · exact absurd n0 a
    have u16 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
      · exact absurd n0 a
    have u17 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n1
    have u18 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
    have u19 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
    have u20 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
    have u21 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u6
    have u25 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
    have u26 : v39 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u11
      · exact a
    have u27 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u27
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u14
    have u32 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u33 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u31 a
    rcases c263 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u31 a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u4
    · exact absurd a u22
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u33
    · exact absurd a u20
    · exact absurd a u24
  have c1757 : v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v6 := by
      rcases c1756 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v7 := by
      rcases c1754 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u9 a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a n4
    have u13 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
    have u20 : v4 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
    rcases c28 with a|a|a|a
    · exact absurd u4 a
    · exact absurd u20 a
    · exact absurd u9 a
    · exact absurd u19 a
  have c1758 : v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v23 := by
      rcases c1713 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v1 := by
      rcases c1757 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v6 := by
      rcases c1756 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v2 := by
      rcases c1745 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v7 := by
      rcases c1754 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
      · exact absurd u4 a
    have u13 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
      · exact absurd u4 a
    have u14 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a n0
    have u17 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u16
    have u18 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
    have u19 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u22 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
    have u23 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u17
    have u25 : v39 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u15
      · exact a
    rcases c142 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n4 a
      · exact a
    rcases c509 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
  have c1760 : v8 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v26 ∨ v27 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n10
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v28 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n11
    have u11 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n11
  have c1761 : v2 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ ¬v28 ∨ v33 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v41 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
    have u7 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v34 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v30 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    rcases c113 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1762 : v2 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ ¬v28 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n9 a
      · exact a
    have u7 : ¬v20 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
    have u10 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
    have u11 : ¬v17 := by
      rcases c551 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v40 := by
      rcases c1761 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact a
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n12
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u15
    have u18 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd a u16
      · exact absurd a u12
    rcases c117 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u4 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u2
    rcases c938 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
  have c1764 : v27 ∨ v2 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v20 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c1762 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n13
    have u8 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u2
    have u15 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u4
    have u18 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u4
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u5
  exact ⟨c1716, c1722, c1723, c1745, c1756, c1757, c1758, c1759, c1760, c1763, c1764⟩
