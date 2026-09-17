import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1950-1999 of the 2559-step refutation of ccase003: 138 core clauses and 111 earlier-derived ones give 4 more. -/
theorem CCase003_block039
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c170 : ¬v47 ∨ ¬v43)
    (c171 : ¬v48 ∨ ¬v43)
    (c175 : ¬v47 ∨ ¬v44)
    (c176 : ¬v48 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c180 : ¬v48 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c183 : ¬v46 ∨ ¬v48)
    (c185 : ¬v47 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c218 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v35 ∨ v37 ∨ v30 ∨ v29)
    (c227 : v43 ∨ ¬v42 ∨ v35 ∨ v14 ∨ v34 ∨ v33 ∨ v49 ∨ v41 ∨ v36 ∨ v40 ∨ v13 ∨ v8 ∨ v47 ∨ v7)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c273 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v33 ∨ v46 ∨ v44 ∨ v37 ∨ v25 ∨ v32 ∨ v34 ∨ v41 ∨ v45 ∨ v27)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c327 : v23 ∨ v22 ∨ v28 ∨ v7 ∨ v15 ∨ v19 ∨ v5 ∨ v1 ∨ v12 ∨ ¬v8 ∨ v16 ∨ v14 ∨ v9 ∨ v13)
    (c341 : v29 ∨ v8 ∨ v1 ∨ v7 ∨ ¬v9 ∨ v31 ∨ v23 ∨ v2 ∨ v10 ∨ v21 ∨ v16 ∨ v14 ∨ v30 ∨ v17)
    (c358 : v43 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c484 : ¬v47 ∨ v40 ∨ v5 ∨ v46 ∨ v39 ∨ v4 ∨ v41 ∨ v48)
    (c502 : ¬v39 ∨ v46 ∨ v17 ∨ v45 ∨ v30 ∨ v44 ∨ v33 ∨ v32 ∨ v18 ∨ v38 ∨ v37 ∨ v25 ∨ v19 ∨ v40)
    (c524 : v43 ∨ ¬v42 ∨ v29 ∨ v36 ∨ v35 ∨ v49 ∨ v34 ∨ v41)
    (c526 : v43 ∨ v29 ∨ ¬v1 ∨ v36 ∨ v7 ∨ v6 ∨ v14 ∨ v2 ∨ v8 ∨ v35 ∨ v13 ∨ v30 ∨ v44 ∨ v48)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c656 : v4 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c739 : ¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c849 : v18 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34)
    (c1390 : ¬v31 ∨ ¬v26 ∨ v27 ∨ ¬v28)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1466 : v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ ¬v26 ∨ v34)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1658 : ¬v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1696 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1793 : ¬v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1816 : ¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1895 : ¬v31 ∨ v24 ∨ ¬v25 ∨ v26 ∨ ¬v27)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1945 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2091 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2113 : ¬v22 ∨ ¬v26 ∨ ¬v34)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2179 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v37)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18)
    (c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2231 : ¬v15 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v35)
    (c2242 : v15 ∨ ¬v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v18 ∨ v22 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2273 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48)
    (c2288 : v4 ∨ v3 ∨ ¬v10 ∨ ¬v20)
    (c2311 : ¬v33 ∨ v48 ∨ v49)
    (c2337 : ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2338 : ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2341 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2362 : v4 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2378 : v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2384 : v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2397 : ¬v4 ∨ ¬v1 ∨ ¬v47)
    (c2407 : v27 ∨ v10 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49)
    (c2412 : ¬v17 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34)
    (c2426 : v4 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v48 ∨ v49)
    (c2433 : ¬v15 ∨ ¬v3 ∨ v10 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2434 : v4 ∨ ¬v3 ∨ v10 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48)
    (c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2457 : ¬v1 ∨ v31 ∨ v34 ∨ v48 ∨ v49)
    (c2465 : ¬v27 ∨ v31 ∨ v34 ∨ v48 ∨ v49)
    (c2467 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2470 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2472 : ¬v32 ∨ v48 ∨ v49)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2523 : v28 ∨ v27 ∨ v30 ∨ v48 ∨ v49)
    (c2525 : ¬v28 ∨ v30 ∨ ¬v35 ∨ v48 ∨ v49)
    (c2536 : v31 ∨ v27 ∨ v30 ∨ v48 ∨ v49)
    (c2537 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c2538 : v22 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45)
    (c2541 : v19 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2546 : v3 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49)
    (c2547 : v18 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    : (v39 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45) ∧ (v48 ∨ v49) ∧ (v1 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v49) := by
  have c2548 : v17 ∨ v3 ∨ v10 ∨ v18 ∨ v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v31 := by
      rcases c2536 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c1390 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u16 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v25 := by
      rcases c2537 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u19 : v22 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u20 : v38 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n5
    have u21 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u19 a
      · exact absurd u2 a
      · exact a
    have u22 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v4 := by
      rcases c2547 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u12
    have u24 : ¬v1 := by
      rcases c2397 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u3 a
    have u25 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u26 : v20 := by
      rcases c2546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u26 a
    rcases c2384 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u10
  have c2549 : ¬v10 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n6
    have u15 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u16 : v20 := by
      rcases c2338 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u3
    rcases c2218 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n1
  have c2550 : v18 ∨ v17 ∨ v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v31 := by
      rcases c2536 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c1390 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u16 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v25 := by
      rcases c2537 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
    have u18 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u19 : v38 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
    have u20 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v10 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v22 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u24 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u23 a
      · exact absurd u1 a
      · exact a
    have u25 : v3 := by
      rcases c2548 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u27 : v4 := by
      rcases c2434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n5
    have u28 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u27 a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u29 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u27 a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
    have u31 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u10
    have u32 : ¬v15 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u33 : v16 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u32
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u10
    have u34 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u35
      · exact absurd a n5
      · exact absurd a u8
    rcases c1131 with a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u31
  have c2551 : v17 ∨ v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v31 := by
      rcases c2536 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c1390 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u15 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v25 := by
      rcases c2537 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
    have u17 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u18 : v18 := by
      rcases c2550 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v22 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u18 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u6
    have u23 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u9
    have u24 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u9
    have u25 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u22 a
      · exact absurd u1 a
      · exact a
    have u26 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u8
    have u30 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u10
      · exact a
      · exact absurd a n3
    rcases c1013 with a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u30 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u12
  have c2552 : v24 ∨ v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v17 := by
      rcases c2551 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v31 := by
      rcases c2536 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v26 := by
      rcases c1390 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : v22 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u8
    have u18 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u20 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v25 := by
      rcases c2537 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u9
    have u22 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u17 a
      · exact absurd u2 a
      · exact a
    have u23 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u24 : v38 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n1
    have u25 : v39 := by
      rcases c2337 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    rcases c157 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2553 : v39 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c2541 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n10
  have c2554 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c502 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
  have c2555 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2554 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2556 : v27 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v24 := by
      rcases c2552 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v28 := by
      rcases c2523 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u12 : ¬v26 := by
      rcases c111 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u14 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v31 := by
      rcases c2536 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u17
      · exact absurd a u10
    have u20 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    have u21 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u17
      · exact absurd a u10
    have u22 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
    have u23 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a u18
      · exact absurd a u10
    have u25 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u26 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u18
      · exact a
    have u27 : ¬v39 := by
      rcases c2555 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u28 : ¬v10 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
    have u29 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : v4 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u32 : ¬v1 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    have u33 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u31 a
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    rcases c2384 with a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a u4
  have c2557 : v25 ∨ v10 ∨ v17 ∨ v23 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n4
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c2555 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v4 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v1 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u9 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c2384 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a n14
  have c2558 : v39 ∨ v4 ∨ v10 ∨ v17 ∨ v25 ∨ ¬v27 ∨ ¬v28 ∨ v35 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u2 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u3 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u8
    have u11 : ¬v3 := by
      rcases c2434 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a n10
    have u12 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
    have u13 : v31 := by
      rcases c2342 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u18 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
    have u19 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u18 a
      · exact a
    rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
  have c2559 : v10 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v31 := by
      rcases c2465 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v28 := by
      rcases c2557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u16 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u4 a
    have u17 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u4 a
    have u18 : v38 := by
      rcases c2179 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a n7
    have u19 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v4 := by
      rcases c2558 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v1 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u23 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u24 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
    have u25 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
    have u26 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u24
      · exact a
    have u27 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v19 := by
      rcases c1494 with a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c2231 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u11
  have c2560 : v28 ∨ v1 ∨ ¬v3 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u15 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u16 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u17 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n0
    have u18 : ¬v39 := by
      rcases c2555 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v4 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u8
    rcases c26 with a|a|a
    · exact absurd u17 a
    · exact absurd n2 a
    · exact absurd u19 a
  have c2561 : v10 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v34 := by
      rcases c2559 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n8
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v24 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u7
    have u17 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u18 : v28 := by
      rcases c2560 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u3 a
    have u20 : v4 := by
      rcases c2426 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u20 a
    have u22 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
    have u23 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
    have u24 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
    have u25 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd u16 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u26 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u23
      · exact a
    have u27 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v19 := by
      rcases c1494 with a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c2231 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a u10
  have c2562 : v35 ∨ ¬v4 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    have u7 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
    have u9 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
    have u10 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
    have u11 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n10
    have u14 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd u13 a
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
    rcases c32 with a|a|a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2563 : v1 ∨ v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
    have u2 : v31 := by
      rcases c2342 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n9
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n10
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n0
  have c2564 : v28 ∨ v1 ∨ v4 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u9 : v3 := by
      rcases c2563 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    have u13 : v31 := by
      rcases c2426 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u14
    have u16 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u4
    have u17 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a u18
      · exact a
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n0
    have u22 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u21 a
      · exact a
    rcases c327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd u16 a
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
  have c2565 : v48 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n11
    have u9 : ¬v4 := by
      rcases c2562 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u10 : v1 := by
      rcases c2564 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u11 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u12 : v38 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
    have u13 : v31 := by
      rcases c2342 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v2 := by
      rcases c2273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n0
    have u18 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u16
    have u19 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
    have u20 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
    have u21 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u22 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u23 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v16 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u26 : v7 := by
      rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd u10 a
      · exact absurd a u18
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n0
    have u27 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v39 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u26 a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a u6
    rcases c2555 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
  have c2566 : ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
    rcases c2465 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
  have c2571 : v49 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ ¬v31 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n0
    have u9 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u10 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u11 : v26 := by
      rcases c2561 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n0
    have u12 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u11 a
    rcases c2565 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n0
  have c2572 : v49 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c2571 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u10 : v34 := by
      rcases c2465 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u11 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u16 : v26 := by
      rcases c2561 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n0
    have u17 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
    have u18 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u16 a
    have u19 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u20 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
    have u21 : v4 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u7
    have u22 : v2 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u5
    rcases c14 with a|a|a
    · exact absurd u22 a
    · exact absurd u17 a
    · exact absurd u21 a
  have c2573 : v30 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v35 := by
      rcases c2566 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : v25 := by
      rcases c2572 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u11 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c1895 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd u5 a
    have u14 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u2
    have u15 : v34 := by
      rcases c2465 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n2
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u19 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u14 a
    have u22 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u23 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u24 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd u17 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u25 : v8 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n7
    have u26 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u23
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u6
    have u27 : v7 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u23
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
    rcases c17 with a|a|a
    · exact absurd u26 a
    · exact absurd u17 a
    · exact absurd u27 a
  have c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c358 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
  have c2575 : v23 ∨ v10 ∨ v17 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v24 := by
      rcases c2573 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact a
    have u10 : v31 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
    have u11 : v37 := by
      rcases c2561 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    rcases c2574 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
  have c2576 : v34 ∨ v17 ∨ ¬v23 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n3 a
    have u5 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u6 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
    have u7 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u6 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u1
  have c2577 : v28 ∨ v10 ∨ v17 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v23 := by
      rcases c2575 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c102 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u1 a
    have u15 : ¬v35 := by
      rcases c2566 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v34 := by
      rcases c2576 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u15
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u18
    have u20 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u18
    have u21 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u18
    have u22 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u23 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    have u24 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u19 a
      · exact a
    rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n1
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
  have c2578 : v10 ∨ v17 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v28 := by
      rcases c2577 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u8 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    rcases c2561 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n4
  have c2579 : ¬v28 ∨ v17 ∨ v24 ∨ v25 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : v10 := by
      rcases c2578 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
    have u17 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
    have u18 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u19 : ¬v35 := by
      rcases c2525 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u21 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u8
      · exact a
      · exact absurd a n4
    have u22 : ¬v39 := by
      rcases c2555 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u23 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u10
    have u24 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u25 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u23 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u21 a
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u14
  have c2580 : ¬v31 ∨ ¬v22 ∨ v23 ∨ v26 ∨ ¬v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
    have u7 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
    rcases c64 with a|a
    · exact absurd u6 a
    · exact absurd u8 a
  have c2581 : ¬v27 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n1 a
      · exact a
    rcases c2465 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c2582 : ¬v26 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v10 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n6
    have u12 : v17 := by
      rcases c2577 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1624 with a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd u12 a
    · exact absurd a u5
    · exact absurd a u4
  have c2583 : ¬v1 ∨ v10 ∨ ¬v17 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n13
    have u7 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
    have u8 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u9 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n4
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v6 := by
      rcases c294 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd u9 a
    rcases c2452 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd n0 a
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
  have c2584 : v22 ∨ v10 ∨ v23 ∨ v25 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c2577 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v26 := by
      rcases c2582 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : v34 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u5
      · exact a
    have u12 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u15
    have u21 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u22 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u23 : ¬v1 := by
      rcases c2583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
    have u24 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u23
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u25 : v3 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u26 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v2 := by
      rcases c2242 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u25 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u23
  have c2585 : ¬v17 ∨ ¬v10 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v34 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n6
    have u10 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u12 : v1 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n11
    have u13 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c5 with a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd u9 a
  have c2586 : v25 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v26 := by
      rcases c2582 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v24 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n0
      · exact a
    have u13 : v10 := by
      rcases c2584 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
    have u17 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u18 : ¬v17 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n6
    have u19 : v31 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
    have u20 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u23 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u24 : v1 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u7
    have u25 : v20 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u1 a
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n3
    have u26 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u27 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    rcases c2288 with a|a|a|a
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd u13 a
    · exact absurd u25 a
  have c2587 : v22 ∨ v23 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v25 := by
      rcases c2586 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c1895 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd u1 a
    have u14 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v34 := by
      rcases c2465 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u17 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : v10 := by
      rcases c2577 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u24 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u18
    have u28 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a u6
      · exact a
      · exact absurd a n3
    have u29 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n2
    rcases c5 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u29 a
  have c2588 : v23 ∨ v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v22 := by
      rcases c2587 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v24 := by
      rcases c89 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u14 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u15 : ¬v31 := by
      rcases c2580 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n1
    have u16 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v34 := by
      rcases c2465 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u19 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v21 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u21 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u5
    have u22 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v10 := by
      rcases c2577 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u25 a
      · exact a
    have u31 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u6
      · exact a
      · exact absurd a n2
    have u32 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u8
    have u33 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n1
    have u34 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u32 a
    have u35 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd u33 a
      · exact absurd a u34
      · exact a
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u30
    rcases c23 with a|a|a
    · exact absurd u31 a
    · exact absurd u33 a
    · exact absurd u35 a
  have c2589 : ¬v17 ∨ ¬v23 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u8 : v34 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n3
    have u9 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd n2 a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    rcases c799 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u10
  have c2590 : v28 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v23 := by
      rcases c2588 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v25 := by
      rcases c102 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u1 a
    have u17 : ¬v17 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
    have u18 : v34 := by
      rcases c2576 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
    have u19 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v21 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u21 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u19
    have u23 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u19
    have u24 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u25 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : v10 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u29 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v4 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u8
    have u32 : v1 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd u32 a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n3
  have c2591 : v31 ∨ ¬v2 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u1
    have u4 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u6 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : v47 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v10 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd u3 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u12
  have c2592 : v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v28 := by
      rcases c2590 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v27 := by
      rcases c2556 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u12 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u15 : v17 := by
      rcases c2579 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u12
    have u20 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v35 := by
      rcases c2581 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u25 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u4
      · exact a
      · exact absurd a n0
    have u26 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
    have u27 : v31 := by
      rcases c2591 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u28 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v1 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u31 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u29
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
    have u32 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u33 : v39 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u32
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u6
    have u34 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u33 a
      · exact a
    rcases c2273 with a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd u30 a
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a u31
    · exact absurd u1 a
    · exact absurd a n1
  have c2593 : v25 ∨ v26 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v30 := by
      rcases c2592 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v27 := by
      rcases c2465 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u14 : v10 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u18 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u19 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u20 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u21 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u18
    have u22 : v18 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd u22 a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u28 : v22 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u24
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u29 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u28 a
    have u30 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u8
    · exact absurd u28 a
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u30
  have c2594 : v26 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v30 := by
      rcases c2592 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v27 := by
      rcases c2465 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u14 : v10 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v25 := by
      rcases c2593 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u21 : ¬v28 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u20 a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
    have u22 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u21
    have u23 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u21
    have u24 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u23 a
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
    have u25 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u26 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u27 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u28 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u17
    have u29 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v24 := by
      rcases c1279 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u29
      · exact a
      · exact absurd u20 a
      · exact absurd a n0
    have u32 : v22 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u30
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
    rcases c87 with a|a|a
    · exact absurd u32 a
    · exact absurd u20 a
    · exact absurd u31 a
  have c2595 : v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : v30 := by
      rcases c2592 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v26 := by
      rcases c2594 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v27 := by
      rcases c2465 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
    have u13 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
    have u14 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n1
    have u15 : ¬v28 := by
      rcases c1816 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
    have u16 : v10 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
    have u17 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u15
    have u23 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u15
    have u24 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u23 a
      · exact absurd a u13
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
    have u25 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u26 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u27 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u28 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u19
    have u29 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v22 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u29
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
    rcases c1466 with a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u22
    · exact absurd u31 a
    · exact absurd u9 a
    · exact absurd a u8
  have c2596 : ¬v2 ∨ v1 ∨ ¬v10 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v3 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n0 a
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n9
  have c2597 : v33 ∨ v1 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c2113 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v17 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u1
    have u7 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a u12
    have u19 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u20 : v29 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd n2 a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
    have u21 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u9
    have u24 : ¬v10 := by
      rcases c2596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u25 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u8
    have u26 : ¬v4 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n1
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u27 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd u25 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u28 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u23 a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u25 a
      · exact absurd u23 a
      · exact a
    have u30 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u23 a
      · exact absurd u25 a
      · exact a
    have u31 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u12
    have u32 : ¬v13 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
    have u33 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a n8
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a n9
      · exact a
      · exact absurd a u4
    have u34 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u33 a
    have u36 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u33 a
      · exact a
    rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u33 a
    · exact absurd a n8
    · exact absurd a u27
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u36
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u11
    · exact absurd a u30
  have c2598 : v27 ∨ v1 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c2113 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u4 : v32 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
    have u8 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u7 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n0
  have c2599 : ¬v22 ∨ v1 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c2113 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u4 : v35 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u1
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    rcases c1462 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
  have c2600 : v10 ∨ v1 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v4 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a n3
    have u4 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd u3 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u7 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n2
      · exact a
      · exact absurd a n16
      · exact absurd a u6
      · exact absurd a n11
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u7 a
    rcases c341 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd u7 a
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n3
  have c2601 : v1 ∨ ¬v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c2113 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u5 : v48 := by
      rcases c2595 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v47 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
    have u12 : v33 := by
      rcases c2599 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v15 := by
      rcases c1465 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n6
    have u19 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u21 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u17 a
      · exact a
    have u25 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u17 a
      · exact a
    have u26 : v10 := by
      rcases c2600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
    have u27 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : v3 := by
      rcases c2470 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u32 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u20
    have u33 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u32 a
    have u34 : v42 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd a u14
      · exact absurd a u30
      · exact absurd a u23
      · exact absurd a n6
      · exact a
      · exact absurd a u4
    have u35 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u34 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u34 a
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u35
  exact ⟨c2553, c2574, c2595, c2601⟩
