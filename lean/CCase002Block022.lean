import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1100-1149 of the 2934-step refutation of ccase002: 122 core clauses and 86 earlier-derived ones give 13 more. -/
theorem CCase002_block022
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
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
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
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
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c165 : ¬v45 ∨ ¬v43)
    (c166 : ¬v43 ∨ ¬v46)
    (c170 : ¬v45 ∨ ¬v44)
    (c171 : ¬v44 ∨ ¬v46)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c197 : v43 ∨ v49 ∨ v48 ∨ v6 ∨ v13 ∨ ¬v7 ∨ v1 ∨ v14)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c237 : v29 ∨ v30 ∨ v15 ∨ v35 ∨ v28 ∨ v23 ∨ v21 ∨ ¬v22)
    (c248 : v6 ∨ ¬v7 ∨ v49 ∨ v48 ∨ v43 ∨ v8 ∨ v1 ∨ v14)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c290 : v29 ∨ v16 ∨ v35 ∨ v23 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v28)
    (c337 : ¬v45 ∨ v39 ∨ v2 ∨ v44 ∨ v3 ∨ v38 ∨ v37 ∨ v46)
    (c349 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v9 ∨ v21 ∨ v14 ∨ v8)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c445 : ¬v44 ∨ v43 ∨ v36 ∨ v37 ∨ v38 ∨ v1 ∨ v2 ∨ v45)
    (c474 : ¬v44 ∨ v36 ∨ v2 ∨ v38 ∨ v43 ∨ v37 ∨ v3 ∨ v45)
    (c488 : ¬v28 ∨ v42 ∨ v48 ∨ v43 ∨ v16 ∨ v22 ∨ v34 ∨ v35 ∨ v15 ∨ v27 ∨ v21 ∨ v23 ∨ v30 ∨ v49)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c615 : v17 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c671 : ¬v28 ∨ ¬v18 ∨ v20 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c681 : v21 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c704 : v21 ∨ ¬v19 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39)
    (c726 : ¬v17 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c803 : ¬v17 ∨ ¬v14 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v24)
    (c843 : v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c958 : ¬v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1054 : v10 ∨ v3 ∨ v6 ∨ v13 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1080 : ¬v24 ∨ v17 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v32)
    (c1132 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1145 : v17 ∨ v16 ∨ ¬v18 ∨ ¬v19 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1155 : v47 ∨ v16 ∨ v17 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1164 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1216 : v4 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1241 : v10 ∨ v11 ∨ v13 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v33 ∨ ¬v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1254 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v45 ∨ v46)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1285 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1319 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1332 : v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1333 : ¬v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1346 : v34 ∨ ¬v19 ∨ v20 ∨ ¬v25 ∨ ¬v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1364 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v34 ∨ v43 ∨ v48 ∨ v49)
    (c1373 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1377 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1397 : ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1412 : v37 ∨ v1 ∨ v2 ∨ v3 ∨ v43 ∨ ¬v44 ∨ v45)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1431 : ¬v37 ∨ ¬v27 ∨ ¬v33)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1465 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v49)
    (c1467 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v43 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1473 : ¬v33 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1580 : v34 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1583 : ¬v17 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v25 ∨ v26)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1590 : v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v43 ∨ v47 ∨ v49)
    (c1600 : v8 ∨ v9 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1610 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1624 : v15 ∨ ¬v1 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v21 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1643 : v43 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1648 : v49 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1652 : v46 ∨ v1 ∨ v15 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v40 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1653 : v14 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    : (¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49) ∧ (v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v1 ∨ v3 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v1 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35) ∧ (¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v16 ∨ v17) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49) ∧ (v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46) ∧ (v8 ∨ v2 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) := by
  have c1654 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1653 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1655 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c1654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n4
    have u3 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
    rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1656 : v49 ∨ v1 ∨ v15 ∨ v18 ∨ v24 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v29 := by
      rcases c1652 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u13 : v21 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n0
    have u14 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u8
    have u16 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
    have u20 : v41 := by
      rcases c1590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
    rcases c1301 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1657 : ¬v1 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u4 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
    have u6 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
    have u12 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u14 a
    rcases c949 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1658 : v18 ∨ ¬v14 ∨ v15 ∨ v24 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v1 := by
      rcases c1656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v17 := by
      rcases c803 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n3
    have u15 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
    have u16 : ¬v21 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v32 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1659 : v24 ∨ ¬v1 ∨ v14 ∨ v17 ∨ v18 ∨ v21 ∨ v33 ∨ ¬v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n12
    have u13 : v32 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n9
    have u14 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1660 : v18 ∨ ¬v1 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v24 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v17 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
    have u12 : ¬v38 := by
      rcases c1659 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
    have u14 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u16 : v42 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n12
    have u17 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n11
      · exact absurd a n12
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd u17 a
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u2
  have c1661 : v18 ∨ v10 ∨ v15 ∨ v24 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v14 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v1 := by
      rcases c1656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v21 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v11 := by
      rcases c1660 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v17 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
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
    have u16 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    rcases c1600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1662 : v28 ∨ ¬v1 ∨ v7 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v6 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v42 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n16
    have u3 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u3 a
      · exact a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a u6
    · exact absurd a n15
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n16
  have c1663 : v49 ∨ v15 ∨ v18 ∨ v24 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v14 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u13 : v10 := by
      rcases c1661 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v1 := by
      rcases c1656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v21 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u21 : v17 := by
      rcases c1600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u22 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u4 a
    have u23 : v7 := by
      rcases c1662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u24 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u19 a
      · exact absurd u23 a
      · exact a
    have u26 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    rcases c138 with a|a
    · exact absurd u27 a
    · exact absurd u26 a
  have c1664 : ¬v7 ∨ v1 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u4 : v6 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n14
      · exact a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n6
    have u5 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    rcases c1412 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n11 a
    · exact absurd a n12
  have c1665 : v33 ∨ v18 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
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
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v15 := by
      rcases c1663 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u3 a
    have u11 : v26 := by
      rcases c1648 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v14 := by
      rcases c1333 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
    have u17 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u16
    have u18 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v1 := by
      rcases c1660 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v35 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v7 := by
      rcases c1664 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a n7
      · exact a
    have u26 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v29 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u23
      · exact absurd u25 a
      · exact absurd a n6
      · exact absurd a n7
    have u28 : v34 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    rcases c126 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
    have u5 : v35 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c127 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1667 : v15 ∨ v1 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v8 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n13
    have u5 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v7 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n13
    have u7 : v6 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u10 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n9 a
      · exact absurd a n10
    have u11 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u3
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
  have c1668 : v14 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v21 := by
      rcases c1667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v20 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c92 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n4 a
  have c1669 : v1 ∨ v16 ∨ v18 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v33 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v15 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
    have u8 : v14 := by
      rcases c1668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n12
    have u14 : ¬v17 := by
      rcases c726 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
    have u15 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd n4 a
    have u17 : v29 := by
      rcases c1590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n12
    have u18 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a u16
    rcases c123 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1670 : ¬v1 ∨ ¬v14 ∨ v18 ∨ ¬v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v17 := by
      rcases c726 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
    have u13 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd n3 a
    have u14 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
    have u16 : v5 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c10 with a|a|a
    · exact absurd n0 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1671 : v14 ∨ ¬v1 ∨ v17 ∨ v18 ∨ v21 ∨ ¬v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n5 a
    have u6 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v31 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u5
    have u8 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1164 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a u10
  have c1672 : ¬v4 ∨ ¬v1 ∨ v3 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v5 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c10 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c1673 : v49 ∨ v18 ∨ v21 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v24 := by
      rcases c1665 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
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
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v15 := by
      rcases c1610 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
    have u13 : v1 := by
      rcases c1669 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u14 : ¬v14 := by
      rcases c1670 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u15 : v17 := by
      rcases c1671 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u4 a
    have u17 : v12 := by
      rcases c726 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
    have u18 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u10
    have u19 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v4 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a n0
    have u30 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u31 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u32 : v7 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c14 with a|a|a
    · exact absurd u13 a
    · exact absurd u32 a
    · exact absurd u31 a
  have c1674 : v33 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v21 := by
      rcases c1673 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u5 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u6 : v24 := by
      rcases c1665 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    rcases c922 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd u3 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u9
  have c1675 : v28 ∨ v16 ∨ v18 ∨ ¬v19 ∨ ¬v21 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u5 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n0
    have u7 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n0
    have u8 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
    have u9 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n10
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n9
    have u11 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n18
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n11
    rcases c25 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1676 : ¬v21 ∨ ¬v1 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u3 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
    have u12 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact a
    have u13 : v28 := by
      rcases c1675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u14
    have u16 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n6
    have u17 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n10
    have u18 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u16 a
    rcases c1373 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd n1 a
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a n10
    · exact absurd a n11
  have c1677 : ¬v28 ∨ v14 ∨ v16 ∨ ¬v19 ∨ v21 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v15 := by
      rcases c488 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n11
    have u7 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u7 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u9
  have c1678 : v49 ∨ ¬v1 ∨ v14 ∨ v18 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u12 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v21 := by
      rcases c1676 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u15 : ¬v28 := by
      rcases c1677 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n0
    have u16 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
    have u17 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : v17 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n6
    have u19 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u3 a
    have u21 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u8
    have u22 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u6
    rcases c52 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1679 : ¬v1 ∨ v14 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
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
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v27 := by
      rcases c1678 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v17 := by
      rcases c1583 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u16
    have u21 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n4
    have u22 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u13
    have u23 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u3 a
    have u24 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u3 a
    have u25 : v13 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u24
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u18
    have u26 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a u18
    have u27 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a n4
    rcases c1470 with a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a n3
  have c1680 : ¬v1 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v14 := by
      rcases c1679 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u10 : ¬v3 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    rcases c1672 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd n0 a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1681 : ¬v14 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u19 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n6
    have u22 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u14
    have u23 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v3 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
    have u26 : v37 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u18
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a n2
    have u27 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v27 := by
      rcases c1431 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u6 a
    have u29 : v26 := by
      rcases c860 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u19
    have u30 : v20 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u3
      · exact a
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u31 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u9 a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u32
    · exact absurd a u18
    · exact absurd a u31
  have c1682 : v32 ∨ ¬v2 ∨ ¬v4 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v7 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v6 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a u8
  have c1683 : v18 ∨ ¬v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c1681 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v15 := by
      rcases c1668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u9 a
    have u21 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u9 a
    have u22 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u9 a
    have u23 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u24 : v8 := by
      rcases c349 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u6
      · exact a
    have u25 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u18
    have u26 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n4
    rcases c1494 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n3
  have c1684 : v27 ∨ v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u13 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n6
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v26 := by
      rcases c1683 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v40 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u7
    have u19 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v2 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a n2
    have u21 : ¬v4 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u20 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u10
    have u23 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v17 := by
      rcases c726 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n0
    have u26 : ¬v15 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u24
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n0
    have u27 : v20 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n0
    have u28 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
    have u29 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u25
      · exact a
    have u30 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u14
      · exact a
    have u31 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u4 a
    have u32 : ¬v28 := by
      rcases c1643 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u26
    · exact absurd a u11
    · exact absurd a u32
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd u30 a
  have c1685 : v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c1681 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v33 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n5
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v27 := by
      rcases c1684 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v37 := by
      rcases c1431 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u6 a
    have u23 : v2 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a n1
    have u24 : ¬v4 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u23 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u10
    have u26 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u28 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a u20
    have u29 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u17
    rcases c71 with a|a|a
    · exact absurd u28 a
    · exact absurd u29 a
    · exact absurd u1 a
  have c1686 : ¬v27 ∨ v1 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v29 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v8 := by
      rcases c1654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
    have u9 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    rcases c205 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n5
  have c1688 : ¬v14 ∨ ¬v7 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    rcases c1470 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
  have c1689 : v45 ∨ v1 ∨ ¬v29 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v18 := by
      rcases c1685 with a|a|a|a|a|a
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
    have u7 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v25 := by
      rcases c1397 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v19 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u5 a
    have u15 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u5 a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
    have u17 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n5
    have u19 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u15
      · exact a
    have u20 : ¬v8 := by
      rcases c1654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v24 := by
      rcases c615 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u22 : ¬v27 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v28 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v14 := by
      rcases c1688 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n5
    have u28 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u29 : v6 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u27
    have u30 : ¬v11 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n8
    have u31 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u29 a
    have u32 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u26 a
    have u33 : ¬v10 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u32
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u15
      · exact absurd a u25
    rcases c1494 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a n0
  have c1690 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c290 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
  have c1691 : v1 ∨ v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v19 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v29 := by
      rcases c1689 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v18 := by
      rcases c1685 with a|a|a|a|a|a
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
    have u6 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u9 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v8 := by
      rcases c1654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v27 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v22 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n2
    have u17 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u16
    have u19 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v30 := by
      rcases c1644 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n7
    have u23 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v24 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u2 a
      · exact a
      · exact absurd u22 a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
    have u26 : v13 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a n3
      · exact absurd a n4
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a u23
  have c1692 : v35 ∨ v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v8 := by
      rcases c1654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v34 := by
      rcases c1691 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v22 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a n6
    rcases c844 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u11
  have c1693 : v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v35 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact a
    have u16 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
    rcases c1655 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
  have c1694 : ¬v35 ∨ ¬v1 ∨ v16 ∨ ¬v18 ∨ ¬v19 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u9 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u11 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
    have u12 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact a
    have u13 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v27 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
    have u16 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v7 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v13 := by
      rcases c958 with a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u3
  have c1695 : v45 ∨ v23 ∨ v24 ∨ v29 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v19 := by
      rcases c1580 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v1 := by
      rcases c1693 with a|a|a|a|a|a
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
    have u7 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u9 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1694 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
    have u14 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v22 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u11
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u4 a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v13 := by
      rcases c958 with a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a n4
    have u23 : v33 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v37 := by
      rcases c1431 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    have u25 : ¬v38 := by
      rcases c1473 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u10
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a n0
  have c1696 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c419 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
  have c1697 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v43 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
    have u3 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v17 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    rcases c83 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u9 a
  have c1698 : v29 ∨ v23 ∨ v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v1 := by
      rcases c1693 with a|a|a|a|a|a
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
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u9 : v44 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1694 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u17 : ¬v22 := by
      rcases c843 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u13
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v28 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u11
    have u21 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
    have u22 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
    have u27 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u15
    rcases c1696 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u7
  have c1699 : v24 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v1 := by
      rcases c1693 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u9 : v44 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1694 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v23 := by
      rcases c1698 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd u12 a
    have u16 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u2 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u2 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u18 a
    have u23 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
    have u24 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
    have u25 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u23 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd u23 a
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u24
  have c1700 : v34 ∨ ¬v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v35 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v46 := by
      rcases c171 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u4 a
      · exact absurd n4 a
      · exact a
    have u7 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u12 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n0
    have u13 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u14 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n14
    · exact absurd a n5
    · exact absurd u12 a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a u13
  have c1701 : v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
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
    have u3 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u8 : v24 := by
      rcases c1699 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v1 := by
      rcases c1693 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v44 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v35 := by
      rcases c1694 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v34 := by
      rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u17 a
    rcases c538 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u11
  have c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v18 := by
      rcases c1685 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v29 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v19 := by
      rcases c1582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u7 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
      · exact a
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u19 : v1 := by
      rcases c1689 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v25 := by
      rcases c1346 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a u8
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v24 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u17
    have u22 : v44 := by
      rcases c1145 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n1
    have u24 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v28 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u27 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u27 a
    have u31 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u14
    have u32 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
    rcases c1696 with a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u3
    · exact absurd a u5
  have c1703 : ¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n3 a
      · exact a
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n4
  have c1704 : v8 ∨ v2 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n6 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n8
    · exact absurd n6 a
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n4
  exact ⟨c1654, c1655, c1666, c1672, c1685, c1686, c1690, c1696, c1697, c1701, c1702, c1703, c1704⟩
