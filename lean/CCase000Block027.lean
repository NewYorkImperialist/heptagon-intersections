import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1350-1399 of the 2189-step refutation of ccase000: 113 core clauses and 93 earlier-derived ones give 18 more. -/
theorem CCase000_block027
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
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
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c75 : ¬v21 ∨ ¬v17)
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
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
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
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c143 : ¬v42 ∨ ¬v39)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c150 : ¬v46 ∨ ¬v43)
    (c155 : ¬v46 ∨ ¬v44)
    (c159 : ¬v46 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c164 : ¬v48 ∨ ¬v46)
    (c165 : ¬v49 ∨ ¬v46)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c177 : v43 ∨ v25 ∨ v45 ∨ v1 ∨ v11 ∨ v24 ∨ v4 ∨ v23 ∨ ¬v3 ∨ v10 ∨ v8 ∨ v2 ∨ v44 ∨ v17)
    (c178 : ¬v40 ∨ v47 ∨ v41 ∨ v32 ∨ v34 ∨ v39 ∨ v33 ∨ v48)
    (c208 : ¬v46 ∨ v39 ∨ v38 ∨ v4 ∨ v3 ∨ v40 ∨ v45 ∨ v47)
    (c216 : v18 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v15 ∨ v11 ∨ v9 ∨ ¬v10 ∨ v30 ∨ v24 ∨ v2 ∨ v31 ∨ v32)
    (c223 : ¬v22 ∨ v29 ∨ v30 ∨ v35 ∨ v15 ∨ v28 ∨ v23 ∨ v21)
    (c258 : v43 ∨ v29 ∨ v45 ∨ v30 ∨ v25 ∨ v44 ∨ ¬v23 ∨ v32 ∨ v18 ∨ v22 ∨ v24 ∨ v16 ∨ v17 ∨ v37)
    (c264 : v43 ∨ v15 ∨ v1 ∨ v9 ∨ v13 ∨ v5 ∨ v2 ∨ v19 ∨ v12 ∨ v14 ∨ v21 ∨ ¬v8 ∨ v44 ∨ v49)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c329 : v43 ∨ ¬v23 ∨ v35 ∨ v30 ∨ v45 ∨ v44 ∨ v28 ∨ v24 ∨ v31 ∨ v21 ∨ v37 ∨ v22 ∨ v15 ∨ v16)
    (c340 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c363 : ¬v46 ∨ v39 ∨ v4 ∨ v45 ∨ v40 ∨ v5 ∨ v38 ∨ v47)
    (c374 : v36 ∨ ¬v30 ∨ v37 ∨ v9 ∨ v24 ∨ v28 ∨ v10 ∨ v29 ∨ v23 ∨ v16 ∨ v35 ∨ v31 ∨ v8 ∨ v42)
    (c389 : v21 ∨ v11 ∨ v2 ∨ v1 ∨ v4 ∨ v10 ∨ v15 ∨ v9 ∨ ¬v8 ∨ v14 ∨ v18 ∨ v22 ∨ v23 ∨ v28)
    (c418 : v36 ∨ ¬v30 ∨ v22 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v29)
    (c434 : v15 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ v8)
    (c465 : ¬v38 ∨ v3 ∨ v32 ∨ v34 ∨ v44 ∨ v31 ∨ v45 ∨ v39 ∨ v4 ∨ v40 ∨ v41 ∨ v2 ∨ v37 ∨ v48)
    (c488 : v15 ∨ v9 ∨ v1 ∨ ¬v8 ∨ v7 ∨ v21 ∨ v14 ∨ v2)
    (c499 : v29 ∨ v35 ∨ ¬v8 ∨ v15 ∨ v21 ∨ v1 ∨ v14 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v22 ∨ v17 ∨ v30)
    (c506 : v36 ∨ v29 ∨ v44 ∨ ¬v22 ∨ v34 ∨ v15 ∨ v23 ∨ v20 ∨ v28 ∨ v30 ∨ v21 ∨ v43 ∨ v27 ∨ v49)
    (c510 : v11 ∨ v10 ∨ v2 ∨ v4 ∨ v44 ∨ v45 ∨ v9 ∨ ¬v3)
    (c537 : v18 ∨ v22 ∨ v16 ∨ v30 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v9 ∨ v24 ∨ v25 ∨ ¬v23 ∨ v31 ∨ v32)
    (c580 : v21 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c628 : ¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c665 : v10 ∨ v3 ∨ v9 ∨ v12 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1229 : v28 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v29 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1287 : ¬v22 ∨ v5 ∨ v12 ∨ v33 ∨ v40 ∨ v47)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1299 : ¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1419 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v21)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1527 : v8 ∨ v1 ∨ v10 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1652 : v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29)
    (c1654 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c1656 : v38 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v30 ∨ v36 ∨ v37)
    (c1658 : ¬v39 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v47 ∨ v48 ∨ v49)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1684 : ¬v29 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1689 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1716 : v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1757 : v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1758 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1821 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1858 : ¬v41 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1861 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1873 : v1 ∨ v6 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49)
    (c1878 : v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1881 : v30 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42)
    (c1884 : ¬v36 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1886 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1896 : v1 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1898 : v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1905 : v24 ∨ v3 ∨ v10 ∨ v23 ∨ v26 ∨ v29 ∨ v36 ∨ ¬v37 ∨ v47 ∨ v48 ∨ v49)
    (c1909 : v31 ∨ v30 ∨ v36 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45)
    (c1912 : v22 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v9 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9)
    (c1914 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    : (¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (v4 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v1 ∨ v8 ∨ v10 ∨ v14 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v24 ∨ v1 ∨ v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37) ∧ (v10 ∨ v1 ∨ v2 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v46 ∨ v47 ∨ v49) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (v30 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v9 ∨ v1 ∨ v2 ∨ ¬v6 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48) ∧ (v23 ∨ v1 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45) ∧ (v3 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v10 ∨ ¬v23 ∨ v26 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v3 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v10 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v9 ∨ v1 ∨ v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ ¬v3 ∨ ¬v9 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49) := by
  have c1915 : v22 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
    have u6 : v9 := by
      rcases c1912 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u6 a
    have u10 : v16 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v29 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u12 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v24 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    have u17 : v38 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u5
    have u18 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u17 a
      · exact a
    rcases c1861 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u5
  have c1916 : v47 ∨ v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c1915 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd n2 a
    have u10 : v13 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v29 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u18 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v37 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n4
    have u21 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    rcases c1909 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
  have c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1909 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1918 : v9 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v31 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u2
    have u7 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n3
    have u8 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v8 := by
      rcases c628 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u10 : v10 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
    rcases c41 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1919 : v4 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : v46 := by
      rcases c1684 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v9 := by
      rcases c1918 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u18 : v36 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
    have u20 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v5 := by
      rcases c1884 with a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n0
      · exact a
      · exact absurd u7 a
      · exact absurd a n7
    have u23 : v3 := by
      rcases c208 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n7
    have u24 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
      · exact absurd n3 a
    have u25 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n9
    have u26 : v28 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u24
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n9
    have u27 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u28 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a u28
      · exact absurd a u27
    rcases c177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u27
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd u23 a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u29
  have c1920 : ¬v15 ∨ v1 ∨ v8 ∨ v10 ∨ v14 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v28 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
    have u6 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n1
    have u7 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1920 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1922 : v24 ∨ v1 ∨ v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n1
    have u6 : v16 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c1036 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
  have c1923 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    rcases c418 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1924 : v10 ∨ v1 ∨ v2 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
    have u5 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
    have u6 : ¬v11 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
    have u7 : ¬v3 := by
      rcases c510 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact a
    have u8 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd n8 a
      · exact absurd a n9
    have u9 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u8
    have u10 : v17 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u1
    have u11 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd a n5
    rcases c67 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1925 : v29 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c1916 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v10 := by
      rcases c1924 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n8
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u11 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n1
    have u12 : v16 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c61 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c1926 : v22 ∨ v1 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
    have u6 : ¬v2 := by
      rcases c1896 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v4 := by
      rcases c1916 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v29 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u10 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u11 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
    have u12 : v24 := by
      rcases c1925 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
    have u17 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
    have u18 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n3
    have u22 : ¬v3 := by
      rcases c510 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u10
      · exact a
    have u23 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
    have u24 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n4
    have u25 : v15 := by
      rcases c389 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
    have u26 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v30 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u24
      · exact a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a n2
    have u28 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u32 : v38 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a u24
      · exact a
      · exact absurd a u3
    have u33 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u34 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u32 a
      · exact a
    rcases c465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u3
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u35
    · exact absurd a u7
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u6
    · exact absurd a u24
    · exact absurd a n5
  have c1927 : v47 ∨ v1 ∨ v2 ∨ ¬v8 ∨ v23 ∨ v26 ∨ v29 ∨ ¬v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v6 := by
      rcases c1873 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : v7 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
    have u21 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n9
    have u22 : ¬v39 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v40 := by
      rcases c178 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a n8
    have u24 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a n0
    have u25 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u20 a
      · exact absurd u8 a
    have u26 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u20 a
      · exact absurd u8 a
    have u27 : v38 := by
      rcases c208 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u22
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n0
    have u28 : ¬v37 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u21
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a n8
  have c1928 : v30 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v20 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
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
    have u9 : ¬v3 := by
      rcases c510 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact a
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u11 : ¬v37 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u10
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n8
    have u13 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v34 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd n7 a
      · exact a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n12
    have u16 : v35 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u13
    rcases c124 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1929 : ¬v4 ∨ v1 ∨ v2 ∨ ¬v6 ∨ ¬v8 ∨ v9 ∨ ¬v16 ∨ v19 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : v7 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n4 a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
    have u7 : v5 := by
      rcases c264 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
    rcases c35 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd n3 a
  have c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
  have c1931 : v29 ∨ v1 ∨ v2 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v30 := by
      rcases c1927 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v6 := by
      rcases c1873 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u15 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u16 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n7
    have u17 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u13
    have u18 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a n6
    have u19 : v4 := by
      rcases c1928 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1929 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n10
  have c1932 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v37 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n10
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1933 : v47 ∨ v1 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v26 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
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
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u11 : ¬v8 := by
      rcases c1931 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v30 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
    have u13 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
    have u14 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v21 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u19 : v15 := by
      rcases c1652 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n7
    have u20 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v37 := by
      rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u17
    have u23 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v3 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v4 := by
      rcases c580 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u26 a
      · exact a
      · exact absurd u3 a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n9
    have u28 : v11 := by
      rcases c177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u27
      · exact absurd a n5
      · exact absurd u26 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u21
    have u29 : v5 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u23
      · exact a
      · exact absurd a u25
      · exact absurd a n0
    have u30 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n9
    rcases c34 with a|a|a|a
    · exact absurd u26 a
    · exact absurd u29 a
    · exact absurd u30 a
    · exact absurd u3 a
  have c1935 : v42 ∨ v7 ∨ v14 ∨ ¬v22 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u6 : v35 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u7 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1290 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n0
  have c1936 : v1 ∨ v9 ∨ v10 ∨ v23 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v2 := by
      rcases c1933 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u12 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u11 a
      · exact absurd u3 a
    have u13 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
      · exact absurd u3 a
    have u14 : v13 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
    have u19 : v42 := by
      rcases c1935 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u6
    have u21 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u22
  have c1937 : v17 ∨ v1 ∨ ¬v6 ∨ v8 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v22 ∨ v23 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v5 := by
      rcases c1287 with a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v3 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v2 := by
      rcases c24 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact absurd n2 a
    have u12 : ¬v4 := by
      rcases c31 with a|a|a|a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
    rcases c177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd u10 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n0
  have c1938 : v15 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v35 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n2
    have u5 : v34 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
    rcases c124 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1939 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v9 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
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
    have u11 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
    have u16 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u17 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : v7 := by
      rcases c1935 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v37 := by
      rcases c1905 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v30 := by
      rcases c1938 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u22 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v38 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd u21 a
      · exact absurd a u16
      · exact absurd a u20
    have u27 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u28 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v5 := by
      rcases c1287 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a n8
    have u31 : v4 := by
      rcases c465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u29
      · exact a
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n9
    rcases c35 with a|a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd u19 a
    · exact absurd u4 a
  have c1940 : v1 ∨ v2 ∨ v10 ∨ v23 ∨ v26 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
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
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
    have u15 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
    have u16 : ¬v42 := by
      rcases c1937 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v7 := by
      rcases c1935 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v3 := by
      rcases c1939 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v4 := by
      rcases c177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u15
    rcases c33 with a|a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd u17 a
    · exact absurd u4 a
  have c1941 : v26 ∨ v1 ∨ v10 ∨ v23 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v2 := by
      rcases c1940 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v9 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v4 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
    have u17 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
    have u18 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v7 := by
      rcases c1935 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u19 a
      · exact absurd u5 a
    have u21 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd u3 a
      · exact absurd a n5
    have u22 : v33 := by
      rcases c1287 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a u21
      · exact absurd a n5
    rcases c1654 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u21
  have c1942 : ¬v2 ∨ v1 ∨ ¬v6 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c26 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n3 a
    · exact absurd n2 a
  have c1943 : v47 ∨ v5 ∨ v12 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v40 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n0
    have u6 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u5 a
    rcases c178 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n7
  have c1944 : v30 ∨ v2 ∨ v9 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u4 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n6
    have u6 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v35 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n4
    have u8 : v34 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n5 a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n11
    rcases c124 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1945 : v1 ∨ v23 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v10 := by
      rcases c1941 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
    have u17 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
    have u18 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u19 : v7 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v2 := by
      rcases c1942 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd u19 a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
    have u21 : v30 := by
      rcases c1944 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
    have u22 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : v5 := by
      rcases c1943 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u21 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u19 a
      · exact absurd u2 a
    have u28 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u19 a
      · exact absurd u2 a
    have u29 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd u4 a
      · exact absurd a n5
    have u30 : v38 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a u29
    have u31 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u30 a
      · exact a
    rcases c465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u32
    · exact absurd a u28
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd a n6
  have c1946 : v29 ∨ v1 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v10 := by
      rcases c1941 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v42 := by
      rcases c1945 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v5 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u20 : v2 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
    have u21 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
      · exact absurd u2 a
    rcases c1887 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd u20 a
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
  have c1947 : v42 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
    have u8 : ¬v4 := by
      rcases c22 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u10 : v13 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v36 := by
      rcases c1884 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n9
    have u13 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n11
    have u17 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v22 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v29 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u11
      · exact absurd a u15
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u21 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v40 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u21
    have u24 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u23 a
    rcases c178 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a n7
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a n10
  have c1948 : ¬v2 ∨ v1 ∨ v23 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v29 := by
      rcases c1946 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u5 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
    have u18 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
    have u20 : v9 := by
      rcases c1947 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u16
  have c1949 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v6 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    have u6 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v4 := by
      rcases c177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a u6
    rcases c33 with a|a|a|a
    · exact absurd u5 a
    · exact absurd u7 a
    · exact absurd n4 a
    · exact absurd n3 a
  have c1950 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    rcases c178 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n6
  have c1951 : v23 ∨ v1 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
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
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v22 := by
      rcases c1926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v29 := by
      rcases c1946 with a|a|a|a|a|a|a
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
    have u13 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u19 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u5
    have u21 : ¬v40 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v2 := by
      rcases c1948 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n5
    have u24 : ¬v9 := by
      rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd u1 a
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u25 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd a n0
    have u26 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u3
    have u27 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n3
    have u29 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u23 a
      · exact absurd u1 a
    have u30 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u23 a
      · exact absurd u1 a
    have u31 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u5
    rcases c1313 with a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u27
  have c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v12 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
    have u4 : v23 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
    have u5 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
    have u6 : v11 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
    have u7 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : v46 := by
      rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u19 : v35 := by
      rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u11
    have u20 : ¬v49 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v48 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v47 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
    have u25 : v1 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u20
    have u26 : v2 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
    rcases c1468 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u20
  have c1953 : v3 ∨ v1 ∨ v9 ∨ v10 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v30 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u7 : ¬v2 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u8 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n14
    have u11 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v40 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v8 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n14
    have u14 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
    have u15 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v7 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n14
    have u18 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n13
    have u19 : v38 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a u5
    have u20 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v23 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u20
    have u23 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a n12
    have u26 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u17 a
      · exact absurd u18 a
    rcases c465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a n13
  have c1954 : v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v26 ∨ v31 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
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
    have u6 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v32 := by
      rcases c1953 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u16 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u7
    have u17 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u18 : v16 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u16
      · exact a
    have u19 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u18 a
    rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd u17 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u12
  have c1955 : v3 ∨ v1 ∨ v2 ∨ v9 ∨ v10 ∨ v26 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
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
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
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
    have u11 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v31 := by
      rcases c1954 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u17 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u18 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
    have u19 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u20 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n5
    have u24 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u25 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u4
    have u26 : v16 := by
      rcases c258 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a u25
      · exact absurd a u19
    have u27 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u26 a
    rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd u17 a
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u25
    · exact absurd a u14
  have c1956 : v3 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v10 ∨ ¬v23 ∨ v26 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
    have u9 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
    have u10 : v29 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v17 := by
      rcases c216 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u14 a
    rcases c537 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd n5 a
    · exact absurd a u13
    · exact absurd a u12
  have c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1958 : v9 ∨ v1 ∨ v2 ∨ v3 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
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
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
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
    have u11 : ¬v10 := by
      rcases c1956 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u12 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u14 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u15 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
    have u16 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u4
    have u18 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u4
    have u19 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v33 := by
      rcases c1955 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u25 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u10
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u10
  have c1959 : ¬v3 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v10 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u8 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n11
    have u9 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v16 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact a
    have u13 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u14 : v4 := by
      rcases c510 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd n0 a
    have u15 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v7 := by
      rcases c1419 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
    rcases c33 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u14 a
    · exact absurd u16 a
    · exact absurd n3 a
  have c1960 : v42 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    rcases c1251 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n13
  have c1961 : v49 ∨ v1 ∨ v2 ∨ v9 ∨ v10 ∨ v26 ∨ v30 ∨ v31 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v3 := by
      rcases c1958 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v29 := by
      rcases c1959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n0
    have u12 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u13 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n0
    have u17 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u16
    have u18 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v4 := by
      rcases c1960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n0
    have u20 : v5 := by
      rcases c1884 with a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u19
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
    have u21 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u20 a
      · exact a
      · exact absurd u2 a
    have u22 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n0
    rcases c510 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd u1 a
  have c1962 : v10 ∨ v1 ∨ v2 ∨ v9 ∨ v26 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v3 := by
      rcases c1958 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v30 := by
      rcases c1961 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u19 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u21 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u10
    have u22 : ¬v40 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v7 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n8
    have u24 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a n6
    rcases c34 with a|a|a|a
    · exact absurd u3 a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u2 a
  have c1963 : v2 ∨ v1 ∨ v9 ∨ v10 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v23 := by
      rcases c1951 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v3 := by
      rcases c1958 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v31 := by
      rcases c1962 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u19 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u21 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u9
    have u22 : ¬v40 := by
      rcases c1950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v7 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n7
    have u24 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a n5
    rcases c34 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u2 a
  have c1964 : v9 ∨ v1 ∨ v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v10 := by
      rcases c1963 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v3 := by
      rcases c1956 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u13 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v29 := by
      rcases c1914 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u15 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u20 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n6
    have u21 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u18
    have u22 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u20 a
      · exact absurd u2 a
    have u23 : ¬v4 := by
      rcases c33 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u20 a
      · exact absurd u2 a
    rcases c1884 with a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd u3 a
    · exact absurd a n4
  have c1965 : v47 ∨ ¬v3 ∨ ¬v9 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u14 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
      · exact absurd u6 a
    have u17 : ¬v4 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
      · exact absurd u6 a
    rcases c1884 with a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd u7 a
    · exact absurd a n0
  exact ⟨c1917, c1919, c1920, c1921, c1922, c1923, c1924, c1930, c1932, c1949, c1950, c1951, c1952, c1956, c1957, c1959, c1964, c1965⟩
