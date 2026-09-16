import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1200-1249 of the 2934-step refutation of ccase002: 128 core clauses and 73 earlier-derived ones give 18 more. -/
theorem CCase002_block024
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c36 : ¬v8 ∨ ¬v9)
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
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
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
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
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
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
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
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c165 : ¬v45 ∨ ¬v43)
    (c170 : ¬v45 ∨ ¬v44)
    (c171 : ¬v44 ∨ ¬v46)
    (c172 : ¬v44 ∨ ¬v47)
    (c177 : ¬v45 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c228 : v29 ∨ v43 ∨ v49 ∨ v44 ∨ v42 ∨ ¬v36 ∨ v30 ∨ v37)
    (c237 : v29 ∨ v30 ∨ v15 ∨ v35 ∨ v28 ∨ v23 ∨ v21 ∨ ¬v22)
    (c240 : v43 ∨ v6 ∨ v3 ∨ ¬v14 ∨ v7 ∨ v15 ∨ v17 ∨ v9 ∨ v13 ∨ v10 ∨ v21 ∨ v8 ∨ v48 ∨ v49)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c332 : v22 ∨ ¬v9 ∨ v24 ∨ v23 ∨ v2 ∨ v16 ∨ v5 ∨ v15 ∨ v8 ∨ v12 ∨ v11 ∨ v19 ∨ v10 ∨ v3)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c407 : ¬v45 ∨ v38 ∨ v37 ∨ v3 ∨ v39 ∨ v4 ∨ v44 ∨ v46)
    (c415 : ¬v39 ∨ v32 ∨ v47 ∨ v33 ∨ v40 ∨ v31 ∨ v38 ∨ v46)
    (c444 : v22 ∨ v21 ∨ v18 ∨ v27 ∨ v7 ∨ v15 ∨ v4 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v12 ∨ v6 ∨ v11 ∨ v28)
    (c458 : v44 ∨ ¬v1 ∨ v49 ∨ v7 ∨ v8 ∨ v43 ∨ v2 ∨ v9)
    (c471 : ¬v39 ∨ v32 ∨ v40 ∨ v11 ∨ v31 ∨ v30 ∨ v38 ∨ v10 ∨ v37 ∨ v4 ∨ v12 ∨ v44 ∨ v46 ∨ v47)
    (c506 : ¬v33 ∨ v40 ∨ v26 ∨ v46 ∨ v41 ∨ v37 ∨ v23 ∨ v34 ∨ v32 ∨ v31 ∨ v30 ∨ v25 ∨ v47 ∨ v48)
    (c509 : v27 ∨ v28 ∨ v17 ∨ v11 ∨ v20 ∨ v3 ∨ v21 ∨ v26 ∨ v5 ∨ v14 ∨ v10 ∨ ¬v13 ∨ v12 ∨ v6)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c531 : ¬v37 ∨ v43 ∨ v31 ∨ v44 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c726 : ¬v17 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c791 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c805 : ¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c843 : v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c932 : v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1094 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1132 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1250 : ¬v11 ∨ ¬v3 ∨ v4 ∨ v17 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1273 : ¬v24 ∨ v17 ∨ v18 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1332 : v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1362 : ¬v34 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1364 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v34 ∨ v43 ∨ v48 ∨ v49)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1405 : ¬v1 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v19 ∨ v26 ∨ v33 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1460 : v18 ∨ v4 ∨ v17 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1477 : v34 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v28)
    (c1502 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v23 ∨ v24)
    (c1507 : ¬v32 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1697 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c1701 : v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1704 : v8 ∨ v2 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1713 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1717 : v34 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1726 : v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ v10 ∨ ¬v37 ∨ v41 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48)
    (c1730 : ¬v9 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49)
    (c1734 : v46 ∨ ¬v1 ∨ v2 ∨ v15 ∨ v16 ∨ v23 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1745 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1748 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38)
    (c1751 : v6 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v21 ∨ v23 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1752 : ¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v40 ∨ v43 ∨ v46 ∨ v47)
    (c1753 : ¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v40 ∨ v43 ∨ v46 ∨ v47)
    (c1754 : ¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v40 ∨ v43 ∨ v46 ∨ v47)
    (c1755 : v20 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v21 ∨ v32 ∨ v39 ∨ v46)
    : (¬v20 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v21 ∨ v32 ∨ v39 ∨ v46) ∧ (v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35) ∧ (¬v24 ∨ v5 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44) ∧ (¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (v21 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v18 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47) ∧ (v16 ∨ ¬v1 ∨ v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34) ∧ (v15 ∨ ¬v1 ∨ v4 ∨ v13 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34) ∧ (v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v18 ∨ ¬v16 ∨ ¬v27) ∧ (¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35) := by
  have c1756 : ¬v20 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v21 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : v11 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    rcases c961 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
  have c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v19 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact a
    have u6 : v21 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact a
    rcases c922 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
  have c1758 : v34 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v15 ∨ ¬v21 ∨ ¬v30 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c1754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v20 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n7 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n10
    have u10 : ¬v13 := by
      rcases c1755 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n7 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n10
    have u11 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1757 with a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd u11 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n9
  have c1759 : v20 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
  have c1760 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n0 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
  have c1761 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v16 ∨ ¬v20 ∨ ¬v21 ∨ v23 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v32 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n7 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u4 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u5 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c1448 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n8
      · exact a
    have u10 : ¬v12 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v26 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u11
    have u13 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1762 : ¬v32 ∨ v5 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v40 ∨ ¬v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c1448 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
    have u5 : ¬v48 := by
      rcases c177 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : v26 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n8
    have u7 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u6 a
    rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u5
  have c1763 : v47 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v23 ∨ v34 ∨ v35 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v2 := by
      rcases c1734 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u12 : v21 := by
      rcases c1717 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v30 := by
      rcases c1758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u12 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v9 := by
      rcases c1751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : v20 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u21 a
    have u23 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u21 a
    have u24 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u12 a
      · exact absurd u21 a
      · exact a
    have u25 : v39 := by
      rcases c1761 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u21 a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u26 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v32 := by
      rcases c1762 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u26
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n0
    have u30 : v31 := by
      rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u19
      · exact a
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
    have u31 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u29
    have u32 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : v24 := by
      rcases c1748 with a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a n4
      · exact a
      · exact absurd a u31
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u28
    have u34 : v26 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u32
      · exact absurd a u9
      · exact a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u26
    rcases c112 with a|a
    · exact absurd u34 a
    · exact absurd u33 a
  have c1764 : ¬v24 ∨ v5 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u5 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n6
    rcases c54 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1765 : v23 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v5 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v35 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v39 := by
      rcases c1754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v21 := by
      rcases c1756 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n10
    have u14 : ¬v22 := by
      rcases c843 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v24 := by
      rcases c1764 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n11
    have u16 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v37 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v38 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n10
    have u19 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v28 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u14
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u19
    have u21 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u11
    have u25 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n8 a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u22
    have u26 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u10
    rcases c51 with a|a
    · exact absurd u26 a
    · exact absurd u24 a
  have c1766 : v39 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v5 ∨ v15 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v35 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v19 := by
      rcases c1765 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u5 a
    have u8 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u4
    have u9 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a u4
    have u11 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u2
  have c1767 : ¬v36 ∨ v29 ∨ v30 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v44 := by
      rcases c228 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u2
    have u4 : ¬v47 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c170 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1702 with a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
  have c1768 : v29 ∨ ¬v1 ∨ v5 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v30 ∨ v33 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v27 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v36 := by
      rcases c1767 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v7 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u8 : v13 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1704 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1769 : ¬v19 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v21 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
    have u4 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a n6
    have u5 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n5
  have c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : v12 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n2
    have u4 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n2
    rcases c55 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1771 : ¬v1 ∨ v3 ∨ v4 ∨ v5 ∨ v15 ∨ v16 ∨ v23 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v35 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v39 := by
      rcases c1754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v20 := by
      rcases c1766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v21 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v19 := by
      rcases c1769 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n8
    have u14 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u15 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u9
    have u16 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c352 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u16
  have c1772 : v16 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v15 ∨ v23 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v5 := by
      rcases c1771 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v35 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n7
    have u10 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n10
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u5
  have c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1760 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u2
  have c1775 : v16 ∨ ¬v1 ∨ v15 ∨ v23 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v35 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
    have u9 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n8
    have u10 : v4 := by
      rcases c1772 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u12
  have c1776 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u2
  have c1777 : v2 ∨ ¬v1 ∨ v7 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    rcases c1730 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1778 : v26 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v45 := by
      rcases c1701 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
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
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c1753 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v19 := by
      rcases c1769 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n12
    have u6 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
    have u7 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a u2
    rcases c51 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c1779 : v23 ∨ ¬v1 ∨ v7 ∨ v15 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v34 := by
      rcases c1775 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n8
    have u12 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u13 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n8
    have u16 : ¬v4 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n8
    have u17 : v2 := by
      rcases c1777 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n8
    have u18 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact a
    have u19 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v39 := by
      rcases c1752 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v38 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n5
    have u22 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v27 := by
      rcases c791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u14
    have u24 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v21 := by
      rcases c1778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u29 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a n8
      · exact absurd a u14
    have u30 : v20 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u31 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u29 a
      · exact a
    have u34 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u29 a
    have u35 : v17 := by
      rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd u29 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a u34
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a n7
      · exact absurd a n8
    rcases c1048 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u34
    · exact absurd u35 a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u26
  have c1780 : v47 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v23 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v7 := by
      rcases c1779 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n5
    have u9 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v34 := by
      rcases c1775 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v27 := by
      rcases c791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u18 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u7
    have u19 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u18 a
      · exact a
    have u26 : v17 := by
      rcases c1004 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u27 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd u26 a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u20
    have u28 : v19 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a u23
      · exact absurd a u5
    rcases c83 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u26 a
  have c1781 : v13 ∨ ¬v1 ∨ ¬v17 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n8
  have c1782 : ¬v21 ∨ v14 ∨ v15 ∨ ¬v19 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c92 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n3 a
  have c1783 : ¬v1 ∨ ¬v13 ∨ v15 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u7 : v23 := by
      rcases c1780 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v33 := by
      rcases c1502 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a u14
    have u16 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u7 a
    have u17 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : v19 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v17 := by
      rcases c726 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u19 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
    have u22 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd u7 a
      · exact absurd a u14
    have u23 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd u7 a
    have u24 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v21 := by
      rcases c1782 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
    have u27 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u25
    have u28 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u27 a
    have u32 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u27 a
    have u33 : ¬v37 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u32
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u20
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u34 : v20 := by
      rcases c509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u6
      · exact a
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u30
    have u35 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n4
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a u18
      · exact absurd a u29
      · exact absurd a u31
    have u36 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u34 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
    have u37 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u35 a
      · exact a
    rcases c962 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u27 a
    · exact absurd a u21
    · exact absurd a u36
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u37
    · exact absurd a n4
  have c1784 : ¬v7 ∨ ¬v1 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v39 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u5 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v45 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u2
  have c1785 : v21 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v18 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n11
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v4 := by
      rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n9
    have u7 : v2 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n12
      · exact a
      · exact absurd a u3
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1786 : ¬v4 ∨ ¬v1 ∨ v6 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u3
    rcases c932 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1787 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    rcases c415 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
  have c1788 : v16 ∨ ¬v1 ∨ v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c1783 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v23 := by
      rcases c1780 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1502 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u10
    have u12 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u2 a
    have u13 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v17 := by
      rcases c1781 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v20 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u2 a
    have u20 : ¬v32 := by
      rcases c1507 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a u10
    have u21 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    have u22 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v7 := by
      rcases c1784 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u27 : v21 := by
      rcases c1785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n6
    have u28 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u27 a
      · exact absurd u17 a
      · exact a
    have u29 : ¬v4 := by
      rcases c1786 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1460 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u29
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1789 : v19 ∨ v13 ∨ ¬v16 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c82 with a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd n3 a
  have c1790 : v19 ∨ ¬v1 ∨ v4 ∨ v13 ∨ ¬v16 ∨ v26 ∨ v27 ∨ v28 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact a
    have u13 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v3 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n9
    have u17 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    have u19 : v12 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u16 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n12
    have u21 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n12
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u20
  have c1791 : v18 ∨ ¬v1 ∨ v4 ∨ v13 ∨ v15 ∨ v19 ∨ v26 ∨ v27 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v28 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v21 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u12
    have u16 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n9
    have u18 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u2 a
      · exact absurd u15 a
      · exact a
    rcases c706 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n4
    · exact absurd u2 a
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u4
  have c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v3 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c330 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
  have c1793 : v19 ∨ v4 ∨ v6 ∨ v13 ∨ ¬v16 ∨ v18 ∨ v27 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : v33 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v20 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v17 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c75 with a|a|a
    · exact absurd n4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1794 : v27 ∨ ¬v1 ∨ v4 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v40 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v26 := by
      rcases c1791 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u7
    have u11 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n0
      · exact a
    have u12 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c140 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c1795 : v4 ∨ ¬v1 ∨ v13 ∨ v15 ∨ v18 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v19 := by
      rcases c1794 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u9 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v25 := by
      rcases c1362 with a|a|a|a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n4
      · exact a
    have u17 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n9
    have u18 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v24 := by
      rcases c1273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
    have u21 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
    have u23 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n6
    have u24 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v28 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u28 : v23 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u26
    rcases c110 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c1797 : v25 ∨ v4 ∨ v15 ∨ v18 ∨ v19 ∨ v22 ∨ v26 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u4
    have u10 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n13
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
    have u14 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    rcases c1405 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    rcases c1477 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u4
  have c1799 : v6 ∨ v4 ∨ v15 ∨ ¬v16 ∨ v18 ∨ ¬v27 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    have u7 : ¬v34 := by
      rcases c1797 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v17 := by
      rcases c1798 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact absurd a u7
    have u9 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
    have u10 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u5
    have u11 : ¬v5 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a u10
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n7
  have c1800 : v48 ∨ v4 ∨ v6 ∨ v15 ∨ ¬v16 ∨ v18 ∨ ¬v27 ∨ v40 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v33 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u8 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u14 : v37 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u13
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n0
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u6
  have c1801 : v15 ∨ ¬v1 ∨ v4 ∨ v13 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c1770 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v16 := by
      rcases c1788 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v27 := by
      rcases c1795 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v40 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd u3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u10 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v33 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v11 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v17 := by
      rcases c706 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
    rcases c1798 with a|a|a|a
    · exact absurd u14 a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd a u13
  have c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1477 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
  have c1803 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1802 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c805 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u2
  have c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
  exact ⟨c1756, c1757, c1764, c1770, c1773, c1774, c1776, c1785, c1787, c1788, c1792, c1796, c1798, c1801, c1802, c1803, c1804, c1805⟩
