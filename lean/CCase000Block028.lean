import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1400-1449 of the 2189-step refutation of ccase000: 130 core clauses and 89 earlier-derived ones give 13 more. -/
theorem CCase000_block028
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c56 : ¬v11 ∨ ¬v13)
    (c58 : ¬v13 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c67 : ¬v16 ∨ ¬v17)
    (c73 : ¬v17 ∨ ¬v19)
    (c76 : ¬v18 ∨ ¬v19)
    (c80 : ¬v21 ∨ ¬v19)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
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
    (c150 : ¬v46 ∨ ¬v43)
    (c155 : ¬v46 ∨ ¬v44)
    (c159 : ¬v46 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c180 : v19 ∨ v12 ∨ v44 ∨ v45 ∨ v2 ∨ v1 ∨ v5 ∨ v8 ∨ v10 ∨ ¬v9 ∨ v11 ∨ v43 ∨ v17 ∨ v16)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c208 : ¬v46 ∨ v39 ∨ v38 ∨ v4 ∨ v3 ∨ v40 ∨ v45 ∨ v47)
    (c222 : ¬v46 ∨ v40 ∨ v45 ∨ v3 ∨ v5 ∨ v4 ∨ v39 ∨ v47)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c276 : v15 ∨ v7 ∨ v20 ∨ v6 ∨ v21 ∨ v8 ∨ ¬v14 ∨ v13)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c336 : ¬v34 ∨ v41 ∨ v6 ∨ v27 ∨ v33 ∨ v29 ∨ v28 ∨ v22 ∨ v7 ∨ v35 ∨ v36 ∨ v40 ∨ v5 ∨ v48)
    (c348 : ¬v46 ∨ v40 ∨ v4 ∨ v45 ∨ v39 ∨ v12 ∨ v10 ∨ v11 ∨ v3 ∨ v42 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c363 : ¬v46 ∨ v39 ∨ v4 ∨ v45 ∨ v40 ∨ v5 ∨ v38 ∨ v47)
    (c367 : ¬v31 ∨ v2 ∨ v38 ∨ v37 ∨ v3 ∨ v26 ∨ v24 ∨ v25 ∨ v32 ∨ v33 ∨ v30 ∨ v4 ∨ v40 ∨ v45)
    (c387 : v36 ∨ v22 ∨ v25 ∨ v38 ∨ v17 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v23 ∨ v30 ∨ v9 ∨ v37 ∨ v11)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c434 : v15 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ v8)
    (c452 : v33 ∨ ¬v26 ∨ v19 ∨ v20 ∨ v18 ∨ v27 ∨ v32 ∨ v25)
    (c462 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v9 ∨ v2 ∨ v8)
    (c533 : v36 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v22 ∨ v23 ∨ v29 ∨ v38)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c957 : v24 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1041 : v29 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ ¬v34 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1111 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v27 ∨ v28)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1149 : v41 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1204 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1260 : v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1299 : ¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1464 : v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1519 : v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48)
    (c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1653 : ¬v22 ∨ ¬v1 ∨ v2 ∨ v4 ∨ ¬v6 ∨ ¬v12 ∨ v23 ∨ v29 ∨ v43 ∨ v49)
    (c1656 : v38 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v30 ∨ v36 ∨ v37)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1689 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1758 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1821 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1858 : ¬v41 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1861 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1878 : v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1882 : ¬v29 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v42)
    (c1884 : ¬v36 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1886 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1888 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9)
    (c1914 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1923 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1950 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c1951 : v23 ∨ v1 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c1964 : v9 ∨ v1 ∨ v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1965 : v47 ∨ ¬v3 ∨ ¬v9 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49)
    : (¬v14 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v22 ∨ v2 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47) ∧ (v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ ¬v2 ∨ v12 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v9 ∨ v10 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47) ∧ (¬v13 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v5 ∨ ¬v2 ∨ v9 ∨ v10 ∨ v12 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v9 ∨ ¬v2 ∨ v5 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v2 ∨ v5 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45) := by
  have c1966 : ¬v3 ∨ v1 ∨ v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c1964 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u16 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u18 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u19 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n3
    have u21 : ¬v29 := by
      rcases c1965 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v15 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u23 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v5 := by
      rcases c180 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u23
    have u26 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u25 a
      · exact a
      · exact absurd u3 a
    have u27 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a n5
      · exact absurd a n6
    rcases c267 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u1 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a u23
  have c1967 : v2 ∨ v1 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v3 := by
      rcases c1966 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v9 := by
      rcases c1964 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd u9 a
    have u13 : v16 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v29 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u16 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u20 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u7
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u7
  have c1968 : ¬v29 ∨ v3 ∨ v4 ∨ v22 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n5
    have u10 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
    have u11 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    have u13 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a n5
  have c1969 : v3 ∨ v1 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v2 := by
      rcases c1967 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u14 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n2
    have u22 : ¬v4 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v29 := by
      rcases c1968 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u25 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n1
    have u26 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u29 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u30 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u29 a
      · exact absurd u3 a
    have u31 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd u4 a
      · exact absurd a n3
    have u32 : v33 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u33 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u32 a
    rcases c267 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd u1 a
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u27
    · exact absurd a u26
  have c1970 : v1 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v2 := by
      rcases c1967 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v3 := by
      rcases c1969 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v13 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u12 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
      · exact absurd u1 a
    have u13 : ¬v4 := by
      rcases c22 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd u1 a
      · exact a
    have u14 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v36 := by
      rcases c1884 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u2 a
      · exact absurd a n2
    have u18 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n0
    have u20 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u21 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    rcases c1543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1971 : ¬v3 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
    have u7 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
  have c1972 : v22 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v28 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c1882 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c92 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1973 : ¬v29 ∨ ¬v1 ∨ v2 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1971 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u15 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
    have u16 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v40 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v39 := by
      rcases c208 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n4
    have u19 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v22 := by
      rcases c1972 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
    have u21 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u9
    have u26 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
    have u27 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n4
    rcases c20 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd n3 a
  have c1974 : v5 ∨ v12 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v3 := by
      rcases c1971 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n5
    have u9 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n5
    have u10 : v33 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u11
  have c1975 : ¬v14 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
  have c1976 : ¬v22 ∨ v2 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u14 : ¬v3 := by
      rcases c1971 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v12 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n4
    have u17 : v5 := by
      rcases c1974 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u17 a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u20 : v8 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u19
    have u21 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u26 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u27 : v35 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u28 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u27 a
      · exact a
    rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u11
  have c1977 : ¬v42 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n3 a
      · exact a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
  have c1978 : v31 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v36 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
    have u3 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v30 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n13
    have u5 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact a
      · exact absurd a u3
    have u6 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u5 a
      · exact a
    rcases c387 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a n5
  have c1979 : v7 ∨ v2 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1980 : v38 ∨ v2 ∨ v7 ∨ v26 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u10 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
    have u11 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u13 : v8 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u9
    have u14 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd u3 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n5
    have u15 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v4 := by
      rcases c17 with a|a|a|a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact absurd u3 a
      · exact a
    have u19 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact a
      · exact absurd u3 a
    have u20 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n5
    have u21 : ¬v42 := by
      rcases c1977 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n5
    have u22 : v39 := by
      rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v25 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n7
    have u25 : v31 := by
      rcases c1978 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
    have u26 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : v24 := by
      rcases c367 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n3
      · exact a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u7
    have u30 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : v21 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1224 with a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u31
    · exact absurd a u30
  have c1981 : v38 ∨ v2 ∨ v7 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u10 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n6
    have u11 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u13 : v8 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u9
    have u14 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd u3 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n4
    have u15 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v4 := by
      rcases c17 with a|a|a|a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact absurd u3 a
      · exact a
    have u19 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact a
      · exact absurd u3 a
    have u20 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n4
    have u21 : ¬v42 := by
      rcases c1977 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n4
    have u22 : v40 := by
      rcases c1980 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v25 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n6
    have u26 : v31 := by
      rcases c1978 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
    have u27 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v24 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u20
      · exact a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u28
    have u30 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : v21 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1224 with a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u31
    · exact absurd a u30
  have c1982 : v7 ∨ v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    have u8 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
    have u9 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
    have u10 : v8 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u7
    have u11 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n3
    have u12 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v4 := by
      rcases c17 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u11 a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u11 a
      · exact a
      · exact absurd u2 a
    have u16 : ¬v42 := by
      rcases c1977 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n3
    have u17 : v38 := by
      rcases c1981 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u17 a
      · exact a
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1983 : v11 ∨ v2 ∨ v10 ∨ v12 ∨ v14 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v7 := by
      rcases c1982 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u11 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u12 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u14 : v27 := by
      rcases c1974 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n7
    have u16 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n7
    have u17 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n7
    have u21 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u15
    have u22 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v31 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u21
      · exact a
      · exact absurd a u22
      · exact absurd a u8
    rcases c1888 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u22
  have c1984 : v11 ∨ v2 ∨ v10 ∨ v12 ∨ v14 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v7 := by
      rcases c1982 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u11 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u12 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u14 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n6
    have u15 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n6
    have u16 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n6
    have u17 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v25 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u14
    have u24 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u6
    have u25 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u22
    have u26 : v31 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u8
    have u27 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u27
    have u29 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u28 a
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u28 a
    · exact absurd a u29
    · exact absurd a u25
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u24
  have c1985 : v9 ∨ v2 ∨ v8 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
    rcases c1037 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n8
  have c1986 : v10 ∨ v2 ∨ v11 ∨ v12 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v7 := by
      rcases c1982 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n5
    have u13 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
    have u14 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n5
    have u15 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v14 := by
      rcases c1984 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v25 := by
      rcases c1985 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u20 : v27 := by
      rcases c1974 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v31 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a u15
      · exact absurd a u10
    rcases c1889 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u15
  have c1987 : v10 ∨ v2 ∨ v12 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v7 := by
      rcases c1982 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n4
    have u13 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n4
    have u14 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n4
    have u15 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v11 := by
      rcases c1986 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v25 := by
      rcases c1985 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u20 : v27 := by
      rcases c1974 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v31 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u10
    rcases c1889 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u15
  have c1988 : v12 ∨ v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v10 := by
      rcases c1987 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v7 := by
      rcases c1982 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
    have u11 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u12 : v17 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact a
    have u13 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n3
    have u14 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n3
    have u15 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v33 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u17 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v24 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u6
    rcases c953 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u6
  have c1989 : ¬v30 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
  have c1990 : v23 ∨ v2 ∨ ¬v12 ∨ v22 ∨ v29 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v30 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    rcases c1989 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1991 : v30 ∨ v2 ∨ v3 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n7 a
      · exact a
    rcases c367 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n12
  have c1992 : v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v12 := by
      rcases c1988 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v7 := by
      rcases c1155 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd u3 a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a n4
    have u10 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u11 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
      · exact absurd u9 a
    have u12 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u13 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n2
    have u14 : ¬v36 := by
      rcases c1884 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n2
    have u15 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n2
    have u16 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n2
    have u17 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v29 := by
      rcases c1973 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v23 := by
      rcases c1990 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u5
    have u20 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v31 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u7
    have u23 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u22 a
    rcases c1991 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u7
  have c1993 : ¬v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v2 := by
      rcases c1992 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
      · exact absurd u4 a
    have u8 : v13 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v12 := by
      rcases c1974 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c58 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1994 : v25 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v2 := by
      rcases c1992 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v4 := by
      rcases c6 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n7
    have u10 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n7
    have u11 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n7
    have u12 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v27 := by
      rcases c1974 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
    rcases c1790 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u8
  have c1995 : v26 ∨ ¬v2 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v1 := by
      rcases c1970 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v4 := by
      rcases c6 with a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u8 : v13 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v42 := by
      rcases c1977 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n3
    have u10 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v25 := by
      rcases c1994 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v21 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u18
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
  have c1996 : v38 ∨ v3 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v11 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
    rcases c1097 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n8
  have c1997 : ¬v38 ∨ ¬v1 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n9
    have u13 : ¬v7 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v6 := by
      rcases c6 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n11
    have u16 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u4
    have u19 : v33 := by
      rcases c1149 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1861 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u11
  have c1998 : v24 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v9 ∨ v10 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u7 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u8 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u9 : ¬v38 := by
      rcases c1997 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v37 := by
      rcases c1996 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a u5
    have u11 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u12 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u5
  have c1999 : ¬v2 ∨ ¬v3 ∨ v5 ∨ v12 ∨ ¬v37 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
    have u10 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : v4 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd u15 a
    have u20 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n8
    have u21 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n8
    have u22 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    have u23 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u13
    have u24 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u22
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
    have u25 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u24 a
    rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a u25
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n7
  have c2000 : v37 ∨ v1 ∨ ¬v2 ∨ ¬v3 ∨ v5 ∨ v7 ∨ v9 ∨ v12 ∨ v16 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u11 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n0
    have u12 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u13 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v6 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n10
    have u16 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v20 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
    have u18 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n11
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u20
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd u22 a
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2001 : ¬v42 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n3 a
      · exact a
    rcases c363 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n4
  have c2002 : ¬v13 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
    have u6 : v21 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2003 : v35 ∨ v4 ∨ v5 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v28 ∨ v38 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v42 := by
      rcases c2001 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n10
    have u9 : ¬v36 := by
      rcases c1884 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n10
    have u10 : v39 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
    have u11 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
    have u14 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
    have u15 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2004 : v5 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v29 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v37 := by
      rcases c1999 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v1 := by
      rcases c2000 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v42 := by
      rcases c2001 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n10
    have u14 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v13 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n12
    have u17 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v20 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
    have u19 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : v40 := by
      rcases c2003 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n11
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u21
    have u23 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v19 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u1 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u6
    have u25 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v14 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u28 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u27 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd u27 a
    · exact absurd a u15
  have c2005 : ¬v7 ∨ ¬v2 ∨ ¬v3 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1190 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2006 : v10 ∨ ¬v2 ∨ v5 ∨ v9 ∨ v12 ∨ v29 ∨ v38 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v3 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u13 : ¬v7 := by
      rcases c2005 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n10
    have u16 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n10
    have u17 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    rcases c2004 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd u11 a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2007 : v9 ∨ ¬v2 ∨ v5 ∨ v10 ∨ v12 ∨ v29 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v3 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u13 : ¬v7 := by
      rcases c2005 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v42 := by
      rcases c2006 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v4 := by
      rcases c2001 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n7
    have u21 : ¬v34 := by
      rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd u20 a
    have u24 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u25 : v13 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n8
    rcases c44 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2008 : v5 ∨ ¬v2 ∨ v9 ∨ v10 ∨ v12 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v3 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v29 := by
      rcases c2007 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
    have u17 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v4 := by
      rcases c1884 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n6
    have u19 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v13 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1260 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a n8
  have c2009 : v5 ∨ ¬v2 ∨ v9 ∨ v10 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v3 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v38 := by
      rcases c2008 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u14
    have u19 : ¬v7 := by
      rcases c2005 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v13 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v6 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n5
    have u22 : v34 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u22 a
      · exact a
    rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u12
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n6
  have c2010 : v7 ∨ v5 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n9
    have u2 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2011 : ¬v42 ∨ ¬v2 ∨ ¬v7 ∨ ¬v9 ∨ v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u12
    have u16 : v1 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    rcases c4 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c2012 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ ¬v9 ∨ v22 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v42 := by
      rcases c2011 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u16 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u6
    have u21 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
    have u22 : v38 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u18
      · exact a
      · exact absurd a u12
    rcases c127 with a|a
    · exact absurd u22 a
    · exact absurd u20 a
  have c2013 : ¬v9 ∨ ¬v2 ∨ v5 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
    have u17 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
    have u18 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
    have u19 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
    have u20 : v7 := by
      rcases c2010 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v42 := by
      rcases c2011 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v6 := by
      rcases c2012 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v1 := by
      rcases c632 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u25 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u26 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
    have u27 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd u7 a
      · exact absurd a n3
    have u28 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u25
      · exact a
      · exact absurd a n3
    have u29 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u21
    have u32 : ¬v30 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u31
      · exact a
      · exact absurd a u29
      · exact absurd a u27
    have u33 : ¬v31 := by
      rcases c1888 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u32
      · exact absurd a u27
      · exact absurd a u30
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a u10
  have c2014 : v6 ∨ ¬v2 ∨ v5 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v7 := by
      rcases c2010 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u9 a
      · exact absurd a u1
      · exact a
      · exact absurd a n11
    have u11 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u12 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u13 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n9
    have u14 : ¬v42 := by
      rcases c1977 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n9
    have u15 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n9
    have u16 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a n9
    have u17 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u17
    have u21 : ¬v29 := by
      rcases c1882 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
    have u22 : ¬v30 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u15
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd u20 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c1887 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  exact ⟨c1975, c1976, c1977, c1992, c1993, c1995, c1998, c2001, c2002, c2009, c2013, c2014, c2015⟩
