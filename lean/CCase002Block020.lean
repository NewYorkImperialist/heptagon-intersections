import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1000-1049 of the 2934-step refutation of ccase002: 133 core clauses and 88 earlier-derived ones give 17 more. -/
theorem CCase002_block020
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
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
    (c57 : v14 ∨ v13 ∨ v12 ∨ v8 ∨ v9 ∨ v11 ∨ v10)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
    (c95 : v21 ∨ v20 ∨ v17 ∨ v18 ∨ v16 ∨ v15)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c101 : ¬v22 ∨ ¬v24)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v49)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c197 : v43 ∨ v49 ∨ v48 ∨ v6 ∨ v13 ∨ ¬v7 ∨ v1 ∨ v14)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c243 : v13 ∨ v6 ∨ v25 ∨ v47 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v18 ∨ v11 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c321 : ¬v32 ∨ v39 ∨ v40 ∨ v25 ∨ v31 ∨ v33 ∨ v24 ∨ v26)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c331 : ¬v34 ∨ v27 ∨ v41 ∨ v35 ∨ v42 ∨ v28 ∨ v33 ∨ v26)
    (c349 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v9 ∨ v21 ∨ v14 ∨ v8)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c427 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v41 ∨ v32 ∨ v27 ∨ v25)
    (c443 : v29 ∨ v43 ∨ v47 ∨ v30 ∨ v41 ∨ v40 ∨ v22 ∨ ¬v36 ∨ v23 ∨ v33 ∨ v42 ∨ v28 ∨ v37 ∨ v49)
    (c445 : ¬v44 ∨ v43 ∨ v36 ∨ v37 ∨ v38 ∨ v1 ∨ v2 ∨ v45)
    (c454 : ¬v24 ∨ v31 ∨ v17 ∨ v30 ∨ v18 ∨ v27 ∨ v37 ∨ v20 ∨ v26 ∨ v25 ∨ v34 ∨ v23 ∨ v38 ∨ v39)
    (c474 : ¬v44 ∨ v36 ∨ v2 ∨ v38 ∨ v43 ∨ v37 ∨ v3 ∨ v45)
    (c519 : v43 ∨ ¬v1 ∨ v49 ∨ v8 ∨ v14 ∨ v2 ∨ v7 ∨ v9)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c669 : ¬v17 ∨ ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c759 : v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21)
    (c832 : ¬v24 ∨ ¬v35 ∨ v41 ∨ v42)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1084 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1164 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1179 : v19 ∨ v3 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1216 : v4 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1254 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v45 ∨ v46)
    (c1260 : ¬v41 ∨ v34 ∨ v35 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1285 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1292 : v29 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ ¬v34 ∨ v38 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1319 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1332 : v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1333 : ¬v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1352 : v16 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v17 ∨ v18 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1364 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v34 ∨ v43 ∨ v48 ∨ v49)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1377 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1386 : v9 ∨ v3 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ ¬v37 ∨ v40 ∨ v45)
    (c1397 : ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1401 : ¬v30 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v37 ∨ v38 ∨ v39)
    (c1405 : ¬v1 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v19 ∨ v26 ∨ v33 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1412 : v37 ∨ v1 ∨ v2 ∨ v3 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1429 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1432 : ¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v49)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1460 : v18 ∨ v4 ∨ v17 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1466 : v8 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1471 : v45 ∨ v19 ∨ ¬v20 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1473 : ¬v33 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1480 : v29 ∨ v3 ∨ ¬v7 ∨ v15 ∨ v20 ∨ v22 ∨ v27 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1508 : v19 ∨ v3 ∨ v10 ∨ v17 ∨ v18 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1527 : v27 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1531 : v33 ∨ ¬v3 ∨ v16 ∨ v18 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1548 : v19 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1549 : v12 ∨ v19 ∨ v26 ∨ ¬v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1551 : v17 ∨ v16 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    : (¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42) ∧ (v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41) ∧ (v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40) ∧ (v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (v34 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26) ∧ (v11 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43) ∧ (v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v43 ∨ v47 ∨ v49) ∧ (v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v29 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v33 ∨ v40 ∨ v43 ∨ v47 ∨ v49) ∧ (v21 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v28 ∨ v29 ∨ ¬v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (v8 ∨ v9 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ v8 ∨ v9 ∨ v12 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1552 : v45 ∨ ¬v18 ∨ v19 ∨ v28 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v17 := by
      rcases c1551 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n3
    have u12 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u13 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u14 : v33 := by
      rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u21 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n8
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v40 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u15
    have u25 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v3 := by
      rcases c1480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u23 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u23 a
    have u28 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u26 a
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a n0
  have c1553 : v49 ∨ ¬v18 ∨ v19 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c1552 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u17 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u18 : v17 := by
      rcases c1551 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
    have u19 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u20 : v12 := by
      rcases c1549 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    have u22 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    have u23 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u7
    have u24 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u20 a
    have u28 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u20 a
    have u29 : v35 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u23
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n0
    have u30 : ¬v3 := by
      rcases c1466 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u31 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v7 := by
      rcases c1480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd a u30
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u31
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1554 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    rcases c331 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
  have c1555 : v42 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ ¬v24 ∨ v28 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c832 with a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
    have u7 : ¬v34 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n0
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n0
    have u9 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u11 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u13 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u14 : v37 := by
      rcases c1412 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n12
    have u15 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n11
    have u20 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u18 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd u18 a
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u16
  have c1556 : v21 ∨ v19 ∨ v28 ∨ ¬v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v26 := by
      rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v15 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a u5
    have u11 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact a
    have u15 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n2
    have u16 : ¬v14 := by
      rcases c1333 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
    have u17 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u17
  have c1557 : v28 ∨ v19 ∨ v21 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v15 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u2
    have u8 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
    have u13 : ¬v14 := by
      rcases c1333 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
    have u14 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u13
    have u15 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v34 := by
      rcases c1556 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v42 := by
      rcases c1549 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u11
      · exact a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v41 := by
      rcases c1555 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v33 := by
      rcases c1301 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v32 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
      · exact a
      · exact absurd a u23
      · exact absurd a u19
    rcases c137 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v35 := by
      rcases c1260 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v33 := by
      rcases c1301 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c141 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    rcases c427 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c1560 : v11 ∨ v17 ∨ v19 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd u3 a
    have u11 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v4 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v10 := by
      rcases c1508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n5
  have c1561 : v40 ∨ v11 ∨ v19 ∨ v28 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v21 := by
      rcases c1557 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
    have u14 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v17 := by
      rcases c1560 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u15 a
    have u17 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u18 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u19 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
    have u20 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u19 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
    have u25 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v1 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u19 a
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd u7 a
      · exact absurd a n5
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u10
  have c1562 : v49 ∨ v11 ∨ v19 ∨ v28 ∨ v34 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v21 := by
      rcases c1557 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : v40 := by
      rcases c1561 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u11 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v33 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u16
    have u19 : v17 := by
      rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u20 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u19 a
    have u21 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
    have u22 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u18 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    rcases c1342 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1563 : v45 ∨ v11 ∨ v19 ∨ v28 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v21 := by
      rcases c1557 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v34 := by
      rcases c1562 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v41 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u17
      · exact a
      · exact absurd a n4
    have u20 : v17 := by
      rcases c1224 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd u3 a
    have u21 : ¬v36 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
    have u22 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u20 a
    have u27 : v4 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u28 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u21
      · exact a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n0
    have u29 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a n3
    have u30 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u30
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a n5
    · exact absurd a u29
  have c1564 : ¬v11 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v21 ∨ ¬v24 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : v15 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u4
    have u10 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u9 a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n5 a
    have u13 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n5 a
    have u14 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u12
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
    have u17 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u16 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c330 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u2
  have c1565 : v28 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v18 := by
      rcases c1553 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v20 := by
      rcases c1471 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v24 := by
      rcases c1548 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v21 := by
      rcases c1557 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v11 := by
      rcases c1564 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v42 := by
      rcases c1563 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
    have u22 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v32 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u24 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n2
    have u25 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u23
    have u26 : v17 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u23
    have u27 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u26 a
    have u29 : v10 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a n3
      · exact a
    rcases c653 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u28
    · exact absurd a u6
    · exact absurd u11 a
    · exact absurd a u8
    · exact absurd a n0
  have c1566 : v33 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v49 := by
      rcases c174 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u9
    have u13 : ¬v17 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u1
    have u14 : ¬v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
    have u15 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v37 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n9
    rcases c1412 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd n8 a
    · exact absurd a n9
  have c1567 : v17 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
    have u10 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u10 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v38 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v10 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n8
    have u18 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u4
  have c1568 : v17 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v14 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd n5 a
    have u3 : ¬v49 := by
      rcases c174 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n11
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a u5
    have u10 : ¬v37 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a n13
    have u11 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v1 := by
      rcases c1412 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd n12 a
      · exact absurd a n13
    have u13 : ¬v6 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u3
    have u14 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1569 : v22 ∨ v11 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a n4
    have u2 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u5
  have c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n4 a
    rcases c321 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
  have c1571 : v33 ∨ v11 ∨ ¬v12 ∨ v17 ∨ v18 ∨ v19 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v37 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n7
    have u14 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u16 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u15
    have u17 : v5 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u2
    have u18 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u19 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    rcases c1412 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd u6 a
    · exact absurd a n7
  have c1572 : v11 ∨ v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v12 := by
      rcases c1571 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n6
    have u13 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v13 := by
      rcases c1566 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v20 := by
      rcases c1567 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v21 := by
      rcases c1569 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u16 a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u19 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n1
    have u20 : ¬v10 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u10
    have u21 : ¬v37 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v1 := by
      rcases c1412 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n7
    have u23 : ¬v6 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u22 a
      · exact a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u22 a
      · exact absurd u12 a
      · exact a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1573 : v11 ∨ v18 ∨ v19 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    have u12 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v17 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u9
    have u15 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u9
    have u16 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u3
    have u17 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n4
    have u22 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v37 := by
      rcases c1412 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a n5
    have u24 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u25
    have u27 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u24
    have u28 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u27
    have u29 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u30 : v20 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u29
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u31 : v21 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u30 a
      · exact absurd a n8
      · exact absurd a n9
    rcases c88 with a|a|a
    · exact absurd u13 a
    · exact absurd u31 a
    · exact absurd u30 a
  have c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v12 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
    have u2 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
  have c1575 : v45 ∨ v11 ∨ v18 ∨ v19 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v40 := by
      rcases c1573 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v33 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u15
    have u18 : ¬v3 := by
      rcases c1432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
    have u19 : v5 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n0
    rcases c19 with a|a|a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd u17 a
  have c1576 : v49 ∨ v18 ∨ v19 ∨ ¬v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v11 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u9 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u11 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : v40 := by
      rcases c860 with a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u7
    have u18 : ¬v17 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u10
    have u19 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
    have u21 : v4 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
  have c1577 : v19 ∨ v18 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v11 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u17 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v17 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
    have u19 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
    have u20 : ¬v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
    have u22 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u21 a
      · exact a
    rcases c1412 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd u2 a
    · exact absurd a n3
  have c1578 : v45 ∨ v17 ∨ v19 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v18 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u5
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
    have u12 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
    have u18 : ¬v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n0
    have u20 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u19 a
      · exact a
    rcases c1412 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd u4 a
    · exact absurd a n0
  have c1579 : v34 ∨ v19 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v18 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : v17 := by
      rcases c1578 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v35 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u15 a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
    have u17 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u3 a
    have u18 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u3 a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v7 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u24
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u10
    rcases c14 with a|a|a
    · exact absurd u26 a
    · exact absurd u21 a
    · exact absurd u25 a
  have c1580 : v34 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v18 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v33 := by
      rcases c1579 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v40 := by
      rcases c1559 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u1
    have u18 : v21 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
    have u19 : ¬v17 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u14
    have u20 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u10 a
    have u22 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
    have u23 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u6
    have u24 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
    have u25 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n0
    have u26 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
    have u30 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u27
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u7
    have u31 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u25 a
    have u32 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u25 a
    rcases c519 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u30 a
    · exact absurd a n6
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u28
  have c1581 : ¬v18 ∨ v19 ∨ v25 ∨ ¬v28 ∨ v29 ∨ v33 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
    have u6 : v21 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u9 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
    have u10 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
    have u11 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u2
    rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v34 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
    have u15 : v28 := by
      rcases c1565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v18 := by
      rcases c1581 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v3 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u21
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n1
    have u27 : v17 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u25
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u28 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u2
      · exact absurd u27 a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u4
    have u29 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u7
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u12
  have c1583 : ¬v17 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : v27 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u3 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
  have c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
  have c1585 : v8 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd n11 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : v3 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v1 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    have u16 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd n4 a
    have u19 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u9 a
    have u20 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n8
    have u21 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u20 a
    rcases c1429 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a n16
  have c1586 : v29 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v33 ∨ ¬v36 ∨ v40 ∨ v41 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : v30 := by
      rcases c443 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd n10 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n15
    rcases c1401 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
  have c1587 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v21 := by
      rcases c349 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n1
    rcases c71 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n5 a
  have c1588 : v11 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u3 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u4
    have u6 : v5 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c10 with a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u1
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n4
  have c1590 : v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v36 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n14
    · exact absurd a n6
  have c1591 : v28 ∨ v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
    have u8 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
    have u9 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
    have u10 : v13 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v1 := by
      rcases c1588 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v15 := by
      rcases c1587 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u6
    have u16 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
    have u17 : ¬v34 := by
      rcases c1585 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v29 := by
      rcases c1590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n14
    have u20 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u24 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u25 : v4 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u26 : v36 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u23
    have u27 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u25 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
  have c1592 : ¬v12 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v15 := by
      rcases c593 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
    rcases c95 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u3
  have c1593 : v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
    have u5 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
    have u6 : ¬v12 := by
      rcases c1592 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v11 := by
      rcases c1591 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v15 := by
      rcases c349 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
    rcases c95 with a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u12
  have c1594 : ¬v29 ∨ ¬v11 ∨ v14 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
    have u18 : ¬v6 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n12
    have u19 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u16
    have u20 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u18
      · exact absurd u19 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u14
    rcases c9 with a|a|a
    · exact absurd u20 a
    · exact absurd u17 a
    · exact absurd u19 a
  have c1595 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v33 ∨ v40 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v41 := by
      rcases c1590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n7
    rcases c147 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1596 : v21 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v28 ∨ v29 ∨ ¬v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : v34 := by
      rcases c1558 with a|a|a|a|a
      · exact a
      · exact absurd n12 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v7 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a u2
    rcases c142 with a|a
    · exact absurd u3 a
    · exact absurd u5 a
  have c1597 : v18 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v17 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v16 := by
      rcases c706 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v29 := by
      rcases c1594 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v1 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n19
    have u9 : ¬v41 := by
      rcases c1596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v36 := by
      rcases c1586 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n19
    have u11 : ¬v7 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
    have u12 : v2 := by
      rcases c519 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a n19
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a n2
    have u13 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    rcases c961 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n0
  have c1598 : v14 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n10
    have u2 : v10 := by
      rcases c57 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u3 : ¬v7 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v2 := by
      rcases c519 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n2
    have u5 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n7
  have c1599 : v24 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v36 := by
      rcases c1598 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v34 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v30 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1429 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n14
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n15
    · exact absurd a n17
  have c1600 : v8 ∨ v9 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v16 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v11 := by
      rcases c1597 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v29 := by
      rcases c1599 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v4 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u14 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u12 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u15 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a u13
    have u16 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u15 a
    rcases c197 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n18
    · exact absurd a n17
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd a n4
  have c1601 : v13 ∨ v8 ∨ v9 ∨ v12 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v20 := by
      rcases c1593 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
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
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u7 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u8 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v14 := by
      rcases c1600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v1 := by
      rcases c1588 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u9
    have u15 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n11
    have u16 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : v6 := by
      rcases c759 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u6
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n13
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a n14
    · exact absurd a n0
  exact ⟨c1554, c1558, c1559, c1570, c1574, c1580, c1582, c1583, c1584, c1588, c1589, c1590, c1593, c1595, c1596, c1600, c1601⟩
